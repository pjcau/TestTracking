import XCTest
@testable import DataDogIntegration

final class DataDogIntegrationTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(DataDogTracer().text, "Hello, World!")
    }
}
