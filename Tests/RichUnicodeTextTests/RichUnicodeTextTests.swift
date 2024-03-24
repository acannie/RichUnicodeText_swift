import XCTest
@testable import RichUnicodeText

final class RichUnicodeTextTests: XCTestCase {
    /// 変換対象の文字列が変換されることを検証
    func test_convertToMathematicalBold() {
        // 準備
        let originalString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"
        let expectedString = "𝐚𝐛𝐜𝐝𝐞𝐟𝐠𝐡𝐢𝐣𝐤𝐥𝐦𝐧𝐨𝐩𝐪𝐫𝐬𝐭𝐮𝐯𝐰𝐱𝐲𝐳𝐀𝐁𝐂𝐃𝐄𝐅𝐆𝐇𝐈𝐉𝐊𝐋𝐌𝐍𝐎𝐏𝐐𝐑𝐒𝐓𝐔𝐕𝐖𝐗𝐘𝐙𝟏𝟐𝟑𝟒𝟓𝟔𝟕𝟖𝟗𝟎"
        // 実行
        let result = originalString.richUnicodeText(.mathematicalBold)
        // 検証
        XCTAssertEqual(result, expectedString)
    }

    /// 変換対象外の文字列が変換されないことを検証
    func test_notConverted() {
        // 準備
        let originalString = "あいうえお１２３４５"
        // 実行
        let result = originalString.richUnicodeText(.mathematicalBold)
        // 検証
        XCTAssertEqual(result, originalString)
    }
}
