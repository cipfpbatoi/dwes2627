import AppKit
import CoreGraphics
import Foundation

let slide = CGSize(width: 960, height: 540)

struct Palette {
    static let navy = NSColor(calibratedRed: 0.055, green: 0.082, blue: 0.145, alpha: 1)
    static let panel = NSColor(calibratedRed: 0.090, green: 0.125, blue: 0.205, alpha: 1)
    static let cream = NSColor(calibratedRed: 0.965, green: 0.945, blue: 0.885, alpha: 1)
    static let white = NSColor(calibratedWhite: 0.98, alpha: 1)
    static let muted = NSColor(calibratedRed: 0.72, green: 0.77, blue: 0.83, alpha: 1)
    static let teal = NSColor(calibratedRed: 0.20, green: 0.82, blue: 0.70, alpha: 1)
    static let coral = NSColor(calibratedRed: 1.00, green: 0.43, blue: 0.35, alpha: 1)
    static let amber = NSColor(calibratedRed: 1.00, green: 0.76, blue: 0.30, alpha: 1)
    static let ink = NSColor(calibratedRed: 0.08, green: 0.11, blue: 0.17, alpha: 1)
}

func font(_ size: CGFloat, _ weight: NSFont.Weight = .regular, mono: Bool = false) -> NSFont {
    if mono { return NSFont.monospacedSystemFont(ofSize: size, weight: weight) }
    return NSFont.systemFont(ofSize: size, weight: weight)
}

func drawText(_ text: String, x: CGFloat, y: CGFloat, w: CGFloat, h: CGFloat,
              size: CGFloat, color: NSColor = Palette.white,
              weight: NSFont.Weight = .regular, alignment: NSTextAlignment = .left,
              mono: Bool = false, lineHeight: CGFloat = 1.12) {
    let paragraph = NSMutableParagraphStyle()
    paragraph.alignment = alignment
    paragraph.lineBreakMode = .byWordWrapping
    paragraph.minimumLineHeight = size * lineHeight
    paragraph.maximumLineHeight = size * lineHeight
    let attrs: [NSAttributedString.Key: Any] = [
        .font: font(size, weight, mono: mono),
        .foregroundColor: color,
        .paragraphStyle: paragraph
    ]
    NSAttributedString(string: text, attributes: attrs).draw(in: NSRect(x: x, y: y, width: w, height: h))
}

func roundRect(_ x: CGFloat, _ y: CGFloat, _ w: CGFloat, _ h: CGFloat,
               radius: CGFloat = 18, fill: NSColor, stroke: NSColor? = nil, line: CGFloat = 1) {
    let path = NSBezierPath(roundedRect: NSRect(x: x, y: y, width: w, height: h), xRadius: radius, yRadius: radius)
    fill.setFill(); path.fill()
    if let stroke = stroke { stroke.setStroke(); path.lineWidth = line; path.stroke() }
}

func line(_ x1: CGFloat, _ y1: CGFloat, _ x2: CGFloat, _ y2: CGFloat, color: NSColor, width: CGFloat = 2) {
    let p = NSBezierPath(); p.move(to: NSPoint(x: x1, y: y1)); p.line(to: NSPoint(x: x2, y: y2))
    color.setStroke(); p.lineWidth = width; p.stroke()
}

func circle(_ x: CGFloat, _ y: CGFloat, _ d: CGFloat, fill: NSColor) {
    fill.setFill(); NSBezierPath(ovalIn: NSRect(x: x, y: y, width: d, height: d)).fill()
}

func base(_ ctx: CGContext, title: String, section: String, page: Int, total: Int, light: Bool = false) {
    (light ? Palette.cream : Palette.navy).setFill()
    NSBezierPath(rect: NSRect(origin: .zero, size: slide)).fill()
    roundRect(42, 484, 114, 28, radius: 14, fill: light ? Palette.ink : Palette.teal)
    drawText(section.uppercased(), x: 52, y: 490, w: 94, h: 20, size: 10,
             color: light ? Palette.white : Palette.navy, weight: .bold, alignment: .center)
    drawText(title, x: 42, y: 432, w: 850, h: 48, size: 30,
             color: light ? Palette.ink : Palette.white, weight: .bold)
    line(42, 38, 918, 38, color: light ? Palette.ink.withAlphaComponent(0.15) : Palette.white.withAlphaComponent(0.15), width: 1)
    drawText("DWES · Repte 2", x: 42, y: 16, w: 300, h: 18, size: 10,
             color: light ? Palette.ink.withAlphaComponent(0.62) : Palette.muted)
    drawText("\(page) / \(total)", x: 830, y: 16, w: 88, h: 18, size: 10,
             color: light ? Palette.ink.withAlphaComponent(0.62) : Palette.muted, alignment: .right)
}

func bullet(_ text: String, x: CGFloat, y: CGFloat, w: CGFloat, color: NSColor = Palette.white, accent: NSColor = Palette.teal) {
    circle(x, y + 8, 8, fill: accent)
    drawText(text, x: x + 20, y: y, w: w - 20, h: 52, size: 18, color: color)
}

func stepCard(_ n: String, _ title: String, _ body: String, x: CGFloat, y: CGFloat, w: CGFloat, accent: NSColor) {
    roundRect(x, y, w, 118, fill: Palette.panel, stroke: accent.withAlphaComponent(0.55), line: 1.5)
    circle(x + 16, y + 78, 28, fill: accent)
    drawText(n, x: x + 16, y: y + 84, w: 28, h: 18, size: 12, color: Palette.navy, weight: .bold, alignment: .center)
    drawText(title, x: x + 54, y: y + 78, w: w - 68, h: 26, size: 17, weight: .bold)
    drawText(body, x: x + 16, y: y + 18, w: w - 32, h: 52, size: 13, color: Palette.muted)
}

func codeBlock(_ code: String, x: CGFloat, y: CGFloat, w: CGFloat, h: CGFloat, label: String) {
    roundRect(x, y, w, h, radius: 14, fill: NSColor(calibratedWhite: 0.025, alpha: 0.92), stroke: Palette.teal.withAlphaComponent(0.35))
    drawText(label.uppercased(), x: x + 16, y: y + h - 28, w: w - 32, h: 16, size: 9, color: Palette.teal, weight: .bold)
    drawText(code, x: x + 16, y: y + 18, w: w - 32, h: h - 54, size: 13, color: Palette.cream, mono: true, lineHeight: 1.25)
}

func makePDF(path: String, pages: [(CGContext, Int, Int) -> Void]) {
    var mediaBox = CGRect(origin: .zero, size: slide)
    guard let consumer = CGDataConsumer(url: URL(fileURLWithPath: path) as CFURL),
          let ctx = CGContext(consumer: consumer, mediaBox: &mediaBox, nil) else { fatalError("No es pot crear \(path)") }
    for (index, page) in pages.enumerated() {
        ctx.beginPDFPage(nil)
        let graphics = NSGraphicsContext(cgContext: ctx, flipped: false)
        NSGraphicsContext.saveGraphicsState(); NSGraphicsContext.current = graphics
        page(ctx, index + 1, pages.count)
        NSGraphicsContext.restoreGraphicsState(); ctx.endPDFPage()
    }
    ctx.closePDF()
}

let outputRoot = CommandLine.arguments.count > 1 ? CommandLine.arguments[1] : FileManager.default.currentDirectoryPath

let microreptePages: [(CGContext, Int, Int) -> Void] = [
    { ctx, page, total in
        Palette.navy.setFill(); NSBezierPath(rect: NSRect(origin: .zero, size: slide)).fill()
        roundRect(42, 458, 106, 30, radius: 15, fill: Palette.teal)
        drawText("R2M2", x: 52, y: 465, w: 86, h: 20, size: 12, color: Palette.navy, weight: .bold, alignment: .center)
        drawText("Processament,\nreintent i confirmació", x: 42, y: 260, w: 610, h: 180, size: 52, weight: .bold, lineHeight: 1.02)
        drawText("Millora el mateix formulari d’R2M1: conserva el que és útil, corregix l’error i confirma el cas correcte.", x: 48, y: 170, w: 570, h: 72, size: 20, color: Palette.muted)
        roundRect(694, 126, 200, 294, radius: 30, fill: Palette.panel)
        line(794, 342, 794, 208, color: Palette.muted.withAlphaComponent(0.45), width: 4)
        circle(771, 346, 46, fill: Palette.coral); drawText("!", x: 771, y: 356, w: 46, h: 25, size: 20, color: Palette.navy, weight: .bold, alignment: .center)
        circle(771, 260, 46, fill: Palette.amber); drawText("↻", x: 771, y: 270, w: 46, h: 25, size: 19, color: Palette.navy, weight: .bold, alignment: .center)
        circle(771, 174, 46, fill: Palette.teal); drawText("✓", x: 771, y: 184, w: 46, h: 25, size: 18, color: Palette.navy, weight: .bold, alignment: .center)
        drawText("error", x: 705, y: 322, w: 58, h: 20, size: 11, color: Palette.muted, alignment: .right)
        drawText("reintent", x: 700, y: 236, w: 63, h: 20, size: 11, color: Palette.muted, alignment: .right)
        drawText("confirmació", x: 690, y: 150, w: 73, h: 20, size: 11, color: Palette.muted, alignment: .right)
        drawText("DWES · Repte 2", x: 42, y: 24, w: 300, h: 20, size: 11, color: Palette.muted)
        drawText("\(page) / \(total)", x: 830, y: 24, w: 88, h: 20, size: 11, color: Palette.muted, alignment: .right)
    },
    { ctx, page, total in
        base(ctx, title: "Una evolució, no un formulari nou", section: "Punt de partida", page: page, total: total)
        roundRect(42, 98, 406, 292, fill: Palette.panel)
        drawText("R2M1 ja aporta", x: 66, y: 342, w: 350, h: 28, size: 21, weight: .bold)
        bullet("El formulari envia dades al servidor.", x: 68, y: 278, w: 340)
        bullet("Una condició genera un error visible.", x: 68, y: 210, w: 340)
        bullet("El cas corregit es pot reenviar.", x: 68, y: 142, w: 340)
        roundRect(476, 98, 442, 292, fill: Palette.cream)
        drawText("R2M2 hi afegix", x: 500, y: 342, w: 380, h: 28, size: 21, color: Palette.ink, weight: .bold)
        bullet("El formulari torna amb dades aprofitables.", x: 502, y: 278, w: 376, color: Palette.ink, accent: Palette.coral)
        bullet("L’usuari corregix només la dada errònia.", x: 502, y: 210, w: 376, color: Palette.ink, accent: Palette.coral)
        bullet("El cas correcte mostra una confirmació.", x: 502, y: 142, w: 376, color: Palette.ink, accent: Palette.coral)
    },
    { ctx, page, total in
        base(ctx, title: "El recorregut mínim obligatori", section: "Nucli", page: page, total: total)
        let gap: CGFloat = 12, x0: CGFloat = 42, y: CGFloat = 220, w: CGFloat = 164
        stepCard("1", "Enviar", "Un cas real amb almenys una dada incorrecta.", x: x0, y: y, w: w, accent: Palette.coral)
        stepCard("2", "Validar", "Error generat pel servidor, no només pel navegador.", x: x0 + (w+gap), y: y, w: w, accent: Palette.coral)
        stepCard("3", "Conservar", "Text i opció tancada tornen al formulari.", x: x0 + 2*(w+gap), y: y, w: w, accent: Palette.amber)
        stepCard("4", "Corregir", "Canvia només la dada errònia i reenvia.", x: x0 + 3*(w+gap), y: y, w: w, accent: Palette.amber)
        stepCard("5", "Confirmar", "Resum clar de les dades processades.", x: x0 + 4*(w+gap), y: y, w: w, accent: Palette.teal)
        roundRect(42, 102, 876, 78, fill: Palette.teal.withAlphaComponent(0.13), stroke: Palette.teal.withAlphaComponent(0.5))
        drawText("Criteri de tancament", x: 64, y: 139, w: 190, h: 24, size: 14, color: Palette.teal, weight: .bold)
        drawText("Pots demostrar els dos camins: error + reintent, i cas correcte + confirmació.", x: 64, y: 112, w: 808, h: 30, size: 19, weight: .medium)
    },
    { ctx, page, total in
        base(ctx, title: "Reconstruir el formulari", section: "Reintent", page: page, total: total, light: true)
        codeBlock("<input value=\"<?= escapar($nom) ?>\">\n\n<option <?= $tipus === 'alta'\n  ? 'selected' : '' ?>>Alta</option>\n\n<input type=\"checkbox\"\n  <?= $avis ? 'checked' : '' ?>>", x: 42, y: 98, w: 490, h: 292, label: "PHP · patró")
        roundRect(558, 98, 360, 292, fill: Palette.white, stroke: Palette.ink.withAlphaComponent(0.14))
        drawText("Tres controls, una idea", x: 582, y: 344, w: 310, h: 28, size: 21, color: Palette.ink, weight: .bold)
        bullet("value torna a pintar text.", x: 584, y: 276, w: 290, color: Palette.ink, accent: Palette.coral)
        bullet("selected conserva una opció.", x: 584, y: 210, w: 290, color: Palette.ink, accent: Palette.amber)
        bullet("checked conserva un estat.", x: 584, y: 144, w: 290, color: Palette.ink, accent: Palette.teal)
        drawText("Els valors venen de la petició real i s’escapen abans de mostrar-los.", x: 582, y: 108, w: 300, h: 44, size: 13, color: Palette.ink.withAlphaComponent(0.72))
    },
    { ctx, page, total in
        base(ctx, title: "Confirmar no és persistir", section: "Cas correcte", page: page, total: total)
        roundRect(42, 118, 270, 250, fill: Palette.panel)
        drawText("Conservar", x: 64, y: 320, w: 220, h: 30, size: 22, weight: .bold)
        drawText("Ajuda a corregir una petició amb error.", x: 64, y: 240, w: 220, h: 64, size: 18, color: Palette.muted)
        roundRect(345, 118, 270, 250, fill: Palette.panel, stroke: Palette.teal.withAlphaComponent(0.6), line: 2)
        drawText("Confirmar", x: 367, y: 320, w: 220, h: 30, size: 22, color: Palette.teal, weight: .bold)
        drawText("Mostra el resum del POST correcte ja processat.", x: 367, y: 240, w: 220, h: 64, size: 18, color: Palette.muted)
        roundRect(648, 118, 270, 250, fill: Palette.panel)
        drawText("Persistir", x: 670, y: 320, w: 220, h: 30, size: 22, weight: .bold)
        drawText("Permet recuperar dades en una altra petició. És ampliació.", x: 670, y: 222, w: 220, h: 82, size: 18, color: Palette.muted)
        drawText("MÍNIM", x: 422, y: 154, w: 116, h: 22, size: 12, color: Palette.navy, weight: .bold, alignment: .center)
        roundRect(422, 144, 116, 34, radius: 17, fill: Palette.teal)
    },
    { ctx, page, total in
        base(ctx, title: "Dues ampliacions amb valor", section: "Opcional", page: page, total: total)
        roundRect(42, 98, 420, 300, fill: Palette.panel, stroke: Palette.amber.withAlphaComponent(0.55), line: 2)
        drawText("01  JSON", x: 68, y: 344, w: 350, h: 30, size: 24, color: Palette.amber, weight: .bold)
        bullet("Guardar només els casos vàlids.", x: 70, y: 274, w: 350, accent: Palette.amber)
        bullet("Llegir-los en una petició posterior.", x: 70, y: 210, w: 350, accent: Palette.amber)
        bullet("Mostrar una llista o resum.", x: 70, y: 146, w: 350, accent: Palette.amber)
        roundRect(498, 98, 420, 300, fill: Palette.panel, stroke: Palette.coral.withAlphaComponent(0.55), line: 2)
        drawText("02  FITXER", x: 524, y: 344, w: 350, h: 30, size: 24, color: Palette.coral, weight: .bold)
        bullet("Validar error, mida i tipus.", x: 526, y: 274, w: 350, accent: Palette.coral)
        bullet("Generar un nom segur al servidor.", x: 526, y: 210, w: 350, accent: Palette.coral)
        bullet("Provar un cas acceptat i un rebutjat.", x: 526, y: 146, w: 350, accent: Palette.coral)
        drawText("Primer el nucli. Les ampliacions no compensen un reintent incomplet.", x: 108, y: 58, w: 744, h: 26, size: 17, color: Palette.teal, weight: .bold, alignment: .center)
    },
    { ctx, page, total in
        base(ctx, title: "Abans de donar-lo per tancat", section: "Checklist", page: page, total: total, light: true)
        let items = [
            "L’error el genera el servidor.", "El formulari no torna buit.",
            "Conserve text i opció tancada.", "Corregisc només la dada errònia.",
            "El cas correcte mostra un resum.", "Puc explicar on es rep i es tracta cada dada."
        ]
        for i in 0..<items.count {
            let col = i % 2, row = i / 2
            let x = CGFloat(42 + col * 444), y = CGFloat(316 - row * 96)
            roundRect(x, y, 420, 72, radius: 14, fill: Palette.white, stroke: Palette.ink.withAlphaComponent(0.12))
            circle(x + 18, y + 20, 32, fill: Palette.teal)
            drawText("✓", x: x + 18, y: y + 27, w: 32, h: 18, size: 14, color: Palette.navy, weight: .bold, alignment: .center)
            drawText(items[i], x: x + 64, y: y + 19, w: 332, h: 38, size: 16, color: Palette.ink, weight: .medium)
        }
        drawText("Pregunta de pas a R2M3", x: 42, y: 74, w: 250, h: 24, size: 13, color: Palette.coral, weight: .bold)
        drawText("Quina regla del teu projecte aplicarà el backend a una dada real del flux?", x: 42, y: 48, w: 820, h: 30, size: 19, color: Palette.ink, weight: .bold)
    }
]

let theoryPages: [(CGContext, Int, Int) -> Void] = [
    { ctx, page, total in
        Palette.cream.setFill(); NSBezierPath(rect: NSRect(origin: .zero, size: slide)).fill()
        roundRect(42, 458, 122, 30, radius: 15, fill: Palette.ink)
        drawText("TEORIA R2", x: 52, y: 465, w: 102, h: 20, size: 11, color: Palette.white, weight: .bold, alignment: .center)
        drawText("Reintent, conservació\ni confirmació", x: 42, y: 270, w: 610, h: 150, size: 52, color: Palette.ink, weight: .bold, lineHeight: 1.02)
        drawText("Un patró curt per entendre què torna al formulari, què es confirma i què només es guarda com a ampliació.", x: 48, y: 174, w: 570, h: 70, size: 20, color: Palette.ink.withAlphaComponent(0.68))
        roundRect(690, 126, 228, 294, radius: 30, fill: Palette.navy)
        drawText("PETICIÓ", x: 728, y: 348, w: 152, h: 22, size: 13, color: Palette.muted, weight: .bold, alignment: .center)
        line(804, 326, 804, 226, color: Palette.teal, width: 4)
        circle(781, 280, 46, fill: Palette.amber); drawText("?", x: 781, y: 290, w: 46, h: 25, size: 19, color: Palette.navy, weight: .bold, alignment: .center)
        drawText("ERROR → REINTENT", x: 710, y: 244, w: 188, h: 22, size: 12, color: Palette.amber, weight: .bold, alignment: .center)
        line(804, 214, 804, 180, color: Palette.teal, width: 4)
        drawText("OK → CONFIRMACIÓ", x: 710, y: 150, w: 188, h: 22, size: 12, color: Palette.teal, weight: .bold, alignment: .center)
        drawText("DWES · Repte 2", x: 42, y: 24, w: 300, h: 20, size: 11, color: Palette.ink.withAlphaComponent(0.58))
        drawText("\(page) / \(total)", x: 830, y: 24, w: 88, h: 20, size: 11, color: Palette.ink.withAlphaComponent(0.58), alignment: .right)
    },
    { ctx, page, total in
        base(ctx, title: "Tres conceptes que no són iguals", section: "Model mental", page: page, total: total)
        let cards: [(String,String,NSColor)] = [
            ("CONSERVAR", "Tornar a pintar valors perquè l’usuari corregisca l’error.", Palette.coral),
            ("CONFIRMAR", "Mostrar el resultat correcte processat en la mateixa resposta.", Palette.teal),
            ("PERSISTIR", "Guardar dades perquè continuen disponibles en una altra petició.", Palette.amber)
        ]
        for i in 0..<3 {
            let x = CGFloat(42 + i * 292)
            roundRect(x, 112, 268, 274, fill: Palette.panel, stroke: cards[i].2.withAlphaComponent(0.55), line: 2)
            drawText("0\(i+1)", x: x+22, y: 326, w: 54, h: 32, size: 25, color: cards[i].2, weight: .bold)
            drawText(cards[i].0, x: x+22, y: 278, w: 224, h: 30, size: 20, weight: .bold)
            drawText(cards[i].1, x: x+22, y: 176, w: 224, h: 86, size: 17, color: Palette.muted)
            drawText(i < 2 ? "MÍNIM" : "AMPLIACIÓ", x: x+22, y: 136, w: 224, h: 20, size: 11, color: cards[i].2, weight: .bold)
        }
    },
    { ctx, page, total in
        base(ctx, title: "El servidor genera dues respostes", section: "Flux", page: page, total: total, light: true)
        roundRect(42, 286, 876, 104, fill: Palette.white, stroke: Palette.ink.withAlphaComponent(0.12))
        drawText("POST", x: 68, y: 322, w: 92, h: 30, size: 22, color: Palette.ink, weight: .bold)
        line(160, 338, 272, 338, color: Palette.ink.withAlphaComponent(0.35), width: 3)
        drawText("validar", x: 290, y: 322, w: 120, h: 30, size: 22, color: Palette.ink, weight: .bold)
        line(410, 338, 522, 338, color: Palette.ink.withAlphaComponent(0.35), width: 3)
        drawText("decidir", x: 540, y: 322, w: 120, h: 30, size: 22, color: Palette.ink, weight: .bold)
        line(660, 338, 756, 338, color: Palette.ink.withAlphaComponent(0.35), width: 3)
        drawText("respondre", x: 774, y: 322, w: 120, h: 30, size: 22, color: Palette.ink, weight: .bold)
        roundRect(42, 112, 420, 132, fill: Palette.coral.withAlphaComponent(0.12), stroke: Palette.coral)
        drawText("Si hi ha error", x: 66, y: 202, w: 350, h: 26, size: 20, color: Palette.coral, weight: .bold)
        drawText("Missatge visible + formulari regenerat amb dades aprofitables.", x: 66, y: 136, w: 350, h: 58, size: 17, color: Palette.ink)
        roundRect(498, 112, 420, 132, fill: Palette.teal.withAlphaComponent(0.12), stroke: Palette.teal)
        drawText("Si és correcte", x: 522, y: 202, w: 350, h: 26, size: 20, color: Palette.teal, weight: .bold)
        drawText("Dades processades + confirmació o resum del resultat.", x: 522, y: 136, w: 350, h: 58, size: 17, color: Palette.ink)
    },
    { ctx, page, total in
        base(ctx, title: "El mateix patró en PHP i Flask", section: "Codi", page: page, total: total)
        codeBlock("$nom = trim($_POST['nom'] ?? '');\n$tipus = $_POST['tipus'] ?? '';\n$error = validar($nom, $tipus);\n\n// vista\nvalue=\"<?= escapar($nom) ?>\"", x: 42, y: 112, w: 420, h: 286, label: "PHP")
        codeBlock("nom = request.form.get('nom', '').strip()\ntipus = request.form.get('tipus', '')\nerror = validar(nom, tipus)\n\nreturn render_template(\n  'form.html', nom=nom, tipus=tipus,\n  error=error)\n", x: 498, y: 112, w: 420, h: 286, label: "Flask + Jinja")
        drawText("La sintaxi canvia. La responsabilitat és la mateixa: rebre → validar → preparar → respondre.", x: 96, y: 66, w: 768, h: 28, size: 17, color: Palette.teal, weight: .bold, alignment: .center)
    },
    { ctx, page, total in
        base(ctx, title: "Ampliar sense perdre el focus", section: "Opcional", page: page, total: total)
        roundRect(42, 100, 420, 296, fill: Palette.panel)
        drawText("JSON", x: 68, y: 346, w: 340, h: 30, size: 24, color: Palette.amber, weight: .bold)
        bullet("Escriu només després de validar.", x: 70, y: 276, w: 350, accent: Palette.amber)
        bullet("Una nova petició llig les dades.", x: 70, y: 210, w: 350, accent: Palette.amber)
        bullet("Mostra una llista reproduïble.", x: 70, y: 144, w: 350, accent: Palette.amber)
        roundRect(498, 100, 420, 296, fill: Palette.panel)
        drawText("FITXER", x: 524, y: 346, w: 340, h: 30, size: 24, color: Palette.coral, weight: .bold)
        bullet("Limita mida i tipus en servidor.", x: 526, y: 276, w: 350, accent: Palette.coral)
        bullet("No confies en el nom del client.", x: 526, y: 210, w: 350, accent: Palette.coral)
        bullet("Evita una ubicació executable.", x: 526, y: 144, w: 350, accent: Palette.coral)
        drawText("Acceptat + rebutjat: les dues proves formen part de l’ampliació.", x: 130, y: 62, w: 700, h: 26, size: 17, color: Palette.teal, weight: .bold, alignment: .center)
    },
    { ctx, page, total in
        base(ctx, title: "Comprova que ho pots explicar", section: "Tancament", page: page, total: total, light: true)
        let qs = [
            "Quina dada provoca l’error i on es valida?",
            "D’on ix el valor que torna a value o selected?",
            "Per què el cas amb error no mostra confirmació?",
            "Què diferencia confirmar de guardar en JSON?",
            "Com rebutjaries un fitxer massa gran o no permés?"
        ]
        for i in 0..<qs.count {
            let y = CGFloat(348 - i * 67)
            circle(48, y + 4, 34, fill: i == 4 ? Palette.coral : Palette.teal)
            drawText("\(i+1)", x: 48, y: y + 12, w: 34, h: 18, size: 13, color: Palette.navy, weight: .bold, alignment: .center)
            drawText(qs[i], x: 98, y: y, w: 790, h: 42, size: 20, color: Palette.ink, weight: .medium)
        }
    }
]

let fm = FileManager.default
try? fm.createDirectory(atPath: outputRoot, withIntermediateDirectories: true)
makePDF(path: outputRoot + "/R2M2-Processament-reintent-i-confirmacio.pdf", pages: microreptePages)
makePDF(path: outputRoot + "/Teoria-R2-Reintent-conservacio-i-confirmacio.pdf", pages: theoryPages)
print("PDF generats en \(outputRoot)")
