//
//  CharacterPresenterTests.swift
//  CharacterPresenterTests
//
//  Created by Fomagran on 2021/08/11.
//

import XCTest
@testable import Architecture_Example

class CharacterPresenterTests: XCTestCase {

    var sut:Mock_CharacterPresenter!
    
    override func setUpWithError() throws {
       sut = Mock_CharacterPresenter()
    }

    override func tearDownWithError() throws {
        sut = nil
    }

    func testSignupPresenter_WhenTapNextButton_ShouldIndexIncrement1() throws {
        let index = sut.index
        sut.incrementIndex()
        XCTAssertEqual(sut.index, index+1)
    }
    
    func testSignupPresenter_WhenIndexGreaterThanZero_ShouldIndexDecrement1() throws {
        let index = sut.index
        sut.decrementIndex()
        XCTAssertEqual(sut.index, index-1)
    }
}
