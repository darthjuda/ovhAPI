import XCTest

import ovhAPITests

var tests = [XCTestCaseEntry]()
tests += ovhAPITests.allTests()
XCTMain(tests)
