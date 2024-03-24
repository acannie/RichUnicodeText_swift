//
//  RichFontEnum.swift
//
//
//  Created by acannie on 2024/03/24.
//

public extension String {
    /// 文字列をリッチなテキストに変換
    /// - Parameter targetFont: 変換先のフォント
    /// - Returns: リッチなテキスト
    func richText(_ targetFont: RichTextFontEnum) -> String {
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
    private func convertToRichCharacter(_ c: Character, font targetFont: RichTextFontEnum) -> Character {
        let plainFontString: String
        let targetTextString: String
        switch c {
        case "a"..."z":
            plainFontString = RichTextFontEnum.plain.font.lowerCases
            targetTextString = targetFont.font.lowerCases
        case "A"..."Z":
            plainFontString = RichTextFontEnum.plain.font.upperCases
            targetTextString = targetFont.font.upperCases
        case "0"..."9":
            plainFontString = RichTextFontEnum.plain.font.numbers
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
