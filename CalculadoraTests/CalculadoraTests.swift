//
//  CalculadoraTests.swift
//  CalculadoraTests
//
//  Created by Nathalia do Valle Papst on 06/01/22.
//

import XCTest
@testable import Calculadora

class CalculadoraViewControllerTests: XCTestCase {
    
    var sut: ViewController!

    override func setUp() {
        sut = ViewController()
    }

    override func tearDown() {
        sut = nil
    }

    func testShowNumberFirstMultipleTap() {
        sut.showNumber(num: "2")
        sut.showNumber(num: "3")
        sut.showNumber(num: "4")
        XCTAssertEqual(sut.labelValue, "234")
    }

    func testShowNumberAfterResult() {
        sut.showNumber(num: "1")
        sut.addition()
        sut.showNumber(num: "2")
        sut.showResult()
        sut.showNumber(num: "4")
        XCTAssertEqual(sut.labelValue, "4")
    }
    
    func testShowNumberFirstSingleTap() {
        sut.showNumber(num: "5")
        XCTAssertEqual(sut.labelValue, "5")
    }
    
    func testAdditionOperation() {
        sut.showNumber(num: "1")
        sut.addition()
        XCTAssertEqual(sut.operation, "+")
        sut.showNumber(num: "2")
        sut.showResult()
        XCTAssertEqual(sut.result, 3.0)
    }
    
    func testSubtractionOperation() {
        sut.showNumber(num: "3")
        sut.subtraction()
        XCTAssertEqual(sut.operation, "-")
        sut.showNumber(num: "4")
        sut.showResult()
        XCTAssertEqual(sut.result, -1.0)
    }
    
    func testMultiplicationOperation() {
        sut.showNumber(num: "5")
        sut.multiplication()
        XCTAssertEqual(sut.operation, "x")
        sut.showNumber(num: "6")
        sut.showResult()
        XCTAssertEqual(sut.result, 30.0)
    }
    
    func testDivisionOperation() {
        sut.showNumber(num: "7")
        sut.division()
        XCTAssertEqual(sut.operation, "/")
        sut.showNumber(num: "8")
        sut.showResult()
        XCTAssertEqual(sut.result, 0.875)
    }
    
    func testSetOperations() {
        sut.showNumber(num: "9")
        sut.addition()
        XCTAssertEqual(sut.firstNumber, 9.0)
        XCTAssertEqual(sut.labelValue, "0")
        XCTAssertEqual(sut.operation, "+")
        XCTAssertFalse(sut.dotPressed)
        sut.showNumber(num: "10")
        sut.showResult()
    }
    
    func testDotAfterResult() {
        sut.showNumber(num: "11")
        sut.addition()
        sut.showNumber(num: "12")
        sut.showResult()
        sut.dot()
        XCTAssertEqual(sut.labelValue, "0")
        XCTAssertTrue(sut.dotPressed)
    }
    
    func testDotError() {
        sut.dot()
        sut.showNumber(num: "13")
        sut.addition()
        sut.dot()
        sut.dot()
        XCTAssertEqual(sut.labelValue, "Error")
        XCTAssertFalse(sut.dotPressed)
    }
    
    func testDotFirstExpression() {
        sut.dot()
        sut.showNumber(num: "14")
        XCTAssertTrue(sut.dotPressed)
    }
}
