//
//  CGFloatTests.swift
//  Geometry
//
//  Created by Bil Moorhead on 2/1/20.
//  Copyright © 2020 Lightswitch Ink. All rights reserved.
//

import XCTest
@testable import Geometry

final class CGFloatTests: XCTestCase {

	func testMultiplyFloatAndPoint() {

		let float: CGFloat = 2
		let point: CGPoint = CGPoint(x: 3,y: 4)
		
		let answer = float * point
		XCTAssertEqual(answer, CGPoint(x: 6,y: 8))
		
	}

	func testMultiplyFloatAndSize() {

		let float: CGFloat = 2
		let size: CGSize = CGSize(width: 3, height: 4)
		
		let answer = float * size
		XCTAssertEqual(answer, CGSize(width: 6, height: 8))
		
	}

	func testMultiplyFloatAndVector() {

		let float: CGFloat = 2
		let size: CGVector = CGVector(dx: 3, dy: 4)
		
		let answer = float * size
		XCTAssertEqual(answer, CGVector(dx: 6, dy: 8))
		
	}

	func testFloatClodeEnough() {

		let float: CGFloat = 3.141592653589793 + .ulpOfOne
		XCTAssertEqual(float, .pi)
		
		let answer = float.closeEnough(to: .pi)
		XCTAssertTrue(answer)
		
	}

}
