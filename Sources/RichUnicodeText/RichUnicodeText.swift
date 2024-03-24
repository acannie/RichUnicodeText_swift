//
//  RichUnicodeText.swift
//
//
//  Created by acannie on 2024/03/24.
//

public extension String {
    /// 文字列をリッチなテキストに変換
    /// - Parameter targetFont: 変換先のフォント
    /// - Returns: リッチなテキスト
    func richUnicodeText(_ targetFont: RichUnicodeFontEnum) -> String {
        var richText = ""
        for c in self {
            richText += String(convertToRichCharacter(c, font: targetFont))
        }
        return richText
    }

    /// 英数字をリッチな文字に変換
    /// - Parameters:
    ///  - c: 変換対象の文字
    ///  - targetFont: 変換先のフォント
    /// - Returns: リッチな文字
    private func convertToRichCharacter(_ c: Character, font targetFont: RichUnicodeFontEnum) -> Character {
        let plainFontString: String
        let targetTextString: String
        switch c {
        case "a"..."z":
            plainFontString = RichUnicodeFontEnum.plain.font.lowerCases
            targetTextString = targetFont.font.lowerCases
        case "A"..."Z":
            plainFontString = RichUnicodeFontEnum.plain.font.upperCases
            targetTextString = targetFont.font.upperCases
        case "0"..."9":
            plainFontString = RichUnicodeFontEnum.plain.font.numbers
            targetTextString = targetFont.font.numbers
        default:
            return c
        }

        guard let index = plainFontString.firstIndex(of: c) else {
            return c
        }
        let indexInt = plainFontString.distance(from: plainFontString.startIndex, to: index)
        let from = targetTextString.index(targetTextString.startIndex, offsetBy: indexInt)
        return targetTextString[from]
    }
}
