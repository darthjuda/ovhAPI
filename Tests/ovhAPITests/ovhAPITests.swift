import XCTest
@testable import ovhAPI

final class ovhAPITests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(ovhAPI().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
