//
//  RichFontEnum.swift
//
//
//  Created by acannie on 2024/03/24.
//

public extension String {
    /// 英数字をリッチなテキストに変換
    /// - Parameter targetFont: 変換先のフォント
    /// - Returns: リッチなテキスト
    func richText(_ targetFont: RichTextFontEnum) -> String {
        var richText = ""
        for c in self {
            switch c {
            case "a"..."z":
                guard let plainLowerCases = RichTextFontEnum.plain.font.lowerCases,
                      let targetFontLowerCases = targetFont.font.lowerCases else {
                    richText += String(c)
                    continue
                }
                if let index = plainLowerCases.firstIndex(of: c) {
                    let indexInt = plainLowerCases.distance(from: plainLowerCases.startIndex, to: index)
                    let from = targetFontLowerCases.index(targetFontLowerCases.startIndex, offsetBy: indexInt)
                    richText += String(targetFontLowerCases[from])
                }
            case "A"..."Z":
                guard let plainUpperCases = RichTextFontEnum.plain.font.upperCases,
                      let targetFontUpperCases = targetFont.font.upperCases else {
                    richText += String(c)
                    continue
                }
                if let index = plainUpperCases.firstIndex(of: c) {
                    let indexInt = plainUpperCases.distance(from: plainUpperCases.startIndex, to: index)
                    let from = targetFontUpperCases.index(targetFontUpperCases.startIndex, offsetBy: indexInt)
                    richText += String(targetFontUpperCases[from])
                }
            case "0"..."9":
                guard let plainNumbers = RichTextFontEnum.plain.font.numbers,
                      let targetFontNumbers = targetFont.font.numbers else {
                    richText += String(c)
                    continue
                }
                if let index = plainNumbers.firstIndex(of: c) {
                    let indexInt = plainNumbers.distance(from: plainNumbers.startIndex, to: index)
                    let from = targetFontNumbers.index(targetFontNumbers.startIndex, offsetBy: indexInt)
                    richText += String(targetFontNumbers[from])
                }
            default:
                richText += String(c)
            }
        }
        return richText
    }
}
