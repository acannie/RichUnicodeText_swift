//
//  RichFontEnum.swift
//
//
//  Created by acannie on 2024/03/24.
//

public extension String {
    /// 英数字をリッチなテキストに変換
    /// - Parameter font: 変換先のフォント
    /// - Returns: リッチなテキスト
    func richText(_ font: RichTextFontEnum) -> String {
        var richText = ""
        for c in self {
            if let index = RichTextFontEnum.plain.rawValue.firstIndex(of: c) {
                let indexInt = RichTextFontEnum.plain.rawValue.distance(from: RichTextFontEnum.plain.rawValue.startIndex, to: index)
                let from = font.rawValue.index(font.rawValue.startIndex, offsetBy: indexInt)
                richText += String(font.rawValue[from])
            } else {
                richText += String(c)
            }
        }
        return richText
    }
}
