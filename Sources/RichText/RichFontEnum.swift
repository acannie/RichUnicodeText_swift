//
//  RichFontEnum.swift
//
//
//  Created by acannie on 2024/03/24.
//

/// フォントの一覧
public enum RichTextFontEnum {
    /// Plain
    case plain
    /// Mathematical Bold
    case mathematicalBold
    /// Mathematical Italic
    case mathematicalItalic
    /// Mathematical Bold Italic
    case mathematicalBoldItalic
    /// Sans-serif
    case sansserif
    /// Sans-serif Bold
    case sansserifBold
    /// Sans-serif Italic
    case sansserifItalic
    /// Sans-serif Bold Italic
    case sansserifItalicBold
    /// Serif
    case serif
    /// Calligraphy
    case calligraphy
    /// Handwritten
    case handwrittern
    /// Fraktur
    case fraktur
    /// Double-struck
    case doublestruck
    /// Full-width
    case fullwidth
    /// Bracketed
    case bracketed
    /// Circle Outlined
    case circleOutlined
    /// Circle Filled
    case circleFilled
    /// Square Outlined
    case squareOutlined
    /// Square Filled
    case squareFilled
    /// Square Dotted
    case dottedSquareOutlined
    /// Superscript
    case superscript
    /// Subscript
    case `subscript`

    var font: RichTextFont {
        switch self {
        case .plain:
            return RichTextFont()
        case .mathematicalBold:
            return RichTextFont(
                lowerCases: "𝐚𝐛𝐜𝐝𝐞𝐟𝐠𝐡𝐢𝐣𝐤𝐥𝐦𝐧𝐨𝐩𝐪𝐫𝐬𝐭𝐮𝐯𝐰𝐱𝐲𝐳",
                upperCases: "𝐀𝐁𝐂𝐃𝐄𝐅𝐆𝐇𝐈𝐉𝐊𝐋𝐌𝐍𝐎𝐏𝐐𝐑𝐒𝐓𝐔𝐕𝐖𝐗𝐘𝐙",
                numbers: "𝟏𝟐𝟑𝟒𝟓𝟔𝟕𝟖𝟗𝟎"
            )
        case .mathematicalItalic:
            return RichTextFont(
                lowerCases: "𝑎𝑏𝑐𝑑𝑒𝑓𝑔ℎ𝑖𝑗𝑘𝑙𝑚𝑛𝑜𝑝𝑞𝑟𝑠𝑡𝑢𝑣𝑤𝑥𝑦𝑧",
                upperCases: "𝐴𝐵𝐶𝐷𝐸𝐹𝐺𝐻𝐼𝐽𝐾𝐿𝑀𝑁𝑂𝑃𝑄𝑅𝑆𝑇𝑈𝑉𝑊𝑋𝑌𝑍"
            )
        case .mathematicalBoldItalic:
            return RichTextFont(
                lowerCases: "𝒂𝒃𝒄𝒅𝒆𝒇𝒈𝒉𝒊𝒋𝒌𝒍𝒎𝒏𝒐𝒑𝒒𝒓𝒔𝒕𝒖𝒗𝒘𝒙𝒚𝒛",
                upperCases: "𝑨𝑩𝑪𝑫𝑬𝑭𝑮𝑯𝑰𝑱𝑲𝑳𝑴𝑵𝑶𝑷𝑸𝑹𝑺𝑻𝑼𝑽𝑾𝑿𝒀𝒁"
            )
        case .sansserif:
            return RichTextFont(
                lowerCases: "𝖺𝖻𝖼𝖽𝖾𝖿𝗀𝗁𝗂𝗃𝗄𝗅𝗆𝗇𝗈𝗉𝗊𝗋𝗌𝗍𝗎𝗏𝗐𝗑𝗒𝗓",
                upperCases: "𝖠𝖡𝖢𝖣𝖤𝖥𝖦𝖧𝖨𝖩𝖪𝖫𝖬𝖭𝖮𝖯𝖰𝖱𝖲𝖳𝖴𝖵𝖶𝖷𝖸𝖹",
                numbers: "𝟣𝟤𝟥𝟦𝟧𝟨𝟩𝟪𝟫𝟢"
            )
        case .sansserifBold:
            return RichTextFont(
                lowerCases: "𝗮𝗯𝗰𝗱𝗲𝗳𝗴𝗵𝗶𝗷𝗸𝗹𝗺𝗻𝗼𝗽𝗾𝗿𝘀𝘁𝘂𝘃𝘄𝘅𝘆𝘇",
                upperCases: "𝗔𝗕𝗖𝗗𝗘𝗙𝗚𝗛𝗜𝗝𝗞𝗟𝗠𝗡𝗢𝗣𝗤𝗥𝗦𝗧𝗨𝗩𝗪𝗫𝗬𝗭",
                numbers: "𝟭𝟮𝟯𝟰𝟱𝟲𝟳𝟴𝟵𝟬"
            )
        case .sansserifItalic:
            return RichTextFont(
                lowerCases: "𝘢𝘣𝘤𝘥𝘦𝘧𝘨𝘩𝘪𝘫𝘬𝘭𝘮𝘯𝘰𝘱𝘲𝘳𝘴𝘵𝘶𝘷𝘸𝘹𝘺𝘻",
                upperCases: "𝘈𝘉𝘊𝘋𝘌𝘍𝘎𝘏𝘐𝘑𝘒𝘓𝘔𝘕𝘖𝘗𝘘𝘙𝘚𝘛𝘜𝘝𝘞𝘟𝘠𝘡"
            )
        case .sansserifItalicBold:
            return RichTextFont(
                lowerCases: "𝙖𝙗𝙘𝙙𝙚𝙛𝙜𝙝𝙞𝙟𝙠𝙡𝙢𝙣𝙤𝙥𝙦𝙧𝙨𝙩𝙪𝙫𝙬𝙭𝙮𝙯",
                upperCases: "𝘼𝘽𝘾𝘿𝙀𝙁𝙂𝙃𝙄𝙅𝙆𝙇𝙈𝙉𝙊𝙋𝙌𝙍𝙎𝙏𝙐𝙑𝙒𝙓𝙔𝙕"
            )
        case .serif:
            return RichTextFont(
                lowerCases: "𝚊𝚋𝚌𝚍𝚎𝚏𝚐𝚑𝚒𝚓𝚔𝚕𝚖𝚗𝚘𝚙𝚚𝚛𝚜𝚝𝚞𝚟𝚠𝚡𝚢𝚣",
                upperCases: "𝙰𝙱𝙲𝙳𝙴𝙵𝙶𝙷𝙸𝙹𝙺𝙻𝙼𝙽𝙾𝙿𝚀𝚁𝚂𝚃𝚄𝚅𝚆𝚇𝚈𝚉",
                numbers: "𝟷𝟸𝟹𝟺𝟻𝟼𝟽𝟾𝟿𝟶"
            )
        case .calligraphy:
            return RichTextFont(
                lowerCases: "𝒶𝒷𝒸𝒹ℯ𝒻ℊ𝒽𝒾𝒿𝓀𝓁𝓂𝓃ℴ𝓅𝓆𝓇𝓈𝓉𝓊𝓋𝓌𝓍𝓎𝓏",
                upperCases: "𝒜ℬ𝒞𝒟ℰℱ𝒢ℋℐ𝒥𝒦ℒℳ𝒩𝒪𝒫𝒬ℛ𝒮𝒯𝒰𝒱𝒲𝒳𝒴𝒵"
            )
        case .handwrittern:
            return RichTextFont(
                lowerCases: "𝓪𝓫𝓬𝓭𝓮𝓯𝓰𝓱𝓲𝓳𝓴𝓵𝓶𝓷𝓸𝓹𝓺𝓻𝓼𝓽𝓾𝓿𝔀𝔁𝔂𝔃",
                upperCases: "𝓐𝓑𝓒𝓓𝓔𝓕𝓖𝓗𝓘𝓙𝓚𝓛𝓜𝓝𝓞𝓟𝓠𝓡𝓢𝓣𝓤𝓥𝓦𝓧𝓨𝓩"
            )
        case .fraktur:
            return RichTextFont(
                lowerCases: "𝔞𝔟𝔠𝔡𝔢𝔣𝔤𝔥𝔦𝔧𝔨𝔩𝔪𝔫𝔬𝔭𝔮𝔯𝔰𝔱𝔲𝔳𝔴𝔵𝔶𝔷",
                upperCases: "𝔄𝔅ℭ𝔇𝔈𝔉𝔊ℌℑ𝔍𝔎𝔏𝔐𝔑𝔒𝔓𝔔ℜ𝔖𝔗𝔘𝔙𝔚𝔛𝔜ℨ"
            )
        case .doublestruck:
            return RichTextFont(
                lowerCases: "𝕒𝕓𝕔𝕕𝕖𝕗𝕘𝕙𝕚𝕛𝕜𝕝𝕞𝕟𝕠𝕡𝕢𝕣𝕤𝕥𝕦𝕧𝕨𝕩𝕪𝕫",
                upperCases: "𝔸𝔹ℂ𝔻𝔼𝔽𝔾ℍ𝕀𝕁𝕂𝕃𝕄ℕ𝕆ℙℚℝ𝕊𝕋𝕌𝕍𝕎𝕏𝕐ℤ",
                numbers: "𝟙𝟚𝟛𝟜𝟝𝟞𝟟𝟠𝟡𝟘"
            )
        case .fullwidth:
            return RichTextFont(
                lowerCases: "ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ",
                upperCases: "ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ",
                numbers: "１２３４５６７８９０"
            )
        case .bracketed:
            return RichTextFont(
                lowerCases: "⒜⒝⒞⒟⒠⒡⒢⒣⒤⒥⒦⒧⒨⒩⒪⒫⒬⒭⒮⒯⒰⒱⒲⒳⒴⒵",
                upperCases: "🄐🄑🄒🄓🄔🄕🄖🄗🄘🄙🄚🄛🄜🄝🄞🄟🄠🄡🄢🄣🄤🄥🄦🄧🄨🄩",
                numbers: "⑴⑵⑶⑷⑸⑹⑺⑻⑼0"
            )
        case .circleOutlined:
            return RichTextFont(
                lowerCases: "ⓐⓑⓒⓓⓔⓕⓖⓗⓘⓙⓚⓛⓜⓝⓞⓟⓠⓡⓢⓣⓤⓥⓦⓧⓨⓩ",
                upperCases: "ⒶⒷⒸⒹⒺⒻⒼⒽⒾⒿⓀⓁⓂⓃⓄⓅⓆⓇⓈⓉⓊⓋⓌⓍⓎⓏ",
                numbers: "①②③④⑤⑥⑦⑧⑨⓪"
            )
        case .circleFilled:
            return RichTextFont(
                upperCases: "🅐🅑🅒🅓🅔🅕🅖🅗🅘🅙🅚🅛🅜🅝🅞🅟🅠🅡🅢🅣🅤🅥🅦🅧🅨🅩",
                numbers: "❶❷❸❹❺❻❼❽❾⓿"
            )
        case .squareOutlined:
            return RichTextFont(
                upperCases: "🄰🄱🄲🄳🄴🄵🄶🄷🄸🄹🄺🄻🄼🄽🄾🄿🅀🅁🅂🅃🅄🅅🅆🅇🅈🅉"
            )
        case .squareFilled:
            return RichTextFont(
                upperCases: "🅰🅱🅲🅳🅴🅵🅶🅷🅸🅹🅺🅻🅼🅽🅾🅿🆀🆁🆂🆃🆄🆅🆆🆇🆈🆉"
            )
        case .dottedSquareOutlined:
            return RichTextFont(
                upperCases: "🇦‌🇧‌🇨‌🇩‌🇪‌🇫‌🇬‌🇭‌🇮‌🇯‌🇰‌🇱‌🇲‌🇳‌🇴‌🇵‌🇶‌🇷‌🇸‌🇹‌🇺‌🇻‌🇼‌🇽‌🇾‌🇿"
            )
        case .superscript:
            return RichTextFont(
                lowerCases: "ᵃᵇᶜᵈᵉᶠᵍʰⁱʲᵏˡᵐⁿᵒᵖqʳˢᵗᵘᵛʷˣʸᶻ",
                upperCases: "ᴬᴮCᴰᴱFᴳᴴᴵᴶᴷᴸᴹᴺᴼᴾQᴿSᵀᵁⱽᵂXYZ",
                numbers: "¹²³⁴⁵⁶⁷⁸⁹⁰"
            )
        case .subscript:
            return RichTextFont(
                lowerCases: "ₐbcdₑfgₕᵢⱼₖₗₘₙₒₚqᵣₛₜᵤᵥwₓyz",
                numbers: "₁₂₃₄₅₆₇₈₉₀"
            )
        }
    }
}

/// フォント
public struct RichTextFont {
    /// 英字小文字
    let lowerCases: String
    /// 英字大文字
    let upperCases: String
    /// 数字
    let numbers: String
    /// 記号
    let symbols: String

    init(
        lowerCases: String = "abcdefghijklmnopqrstuvwxyz",
        upperCases: String = "ABCDEFGHIJKLMNOPQRSTUVWXYZ",
        numbers: String = "1234567890",
        symbols: String = "!@#$%^&*()-=_+[]{}|;':\",.<>/?"){
        self.lowerCases = lowerCases
        self.upperCases = upperCases
        self.numbers = numbers
        self.symbols = symbols
    }
}
