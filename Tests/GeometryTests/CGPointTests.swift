//
//  CGPointTests.swift
//  Geometry
//
//  Created by Bil Moorhead on 2/1/20.
//  Copyright © 2020 Lightswitch Ink. All rights reserved.
//

import XCTest
@testable import Geometry

final class CGPointTests: XCTestCase {
	
	func testUnitPoint() {
		
		let unit: CGPoint = .unit
		
		XCTAssertEqual(unit.x, 1)
		XCTAssertEqual(unit.y, 1)

	}
	
	func testAddTwoPoints() {
		
		let p = CGPoint(x: 1, y: 1)
		let q = CGPoint(x: 2, y: 2)
		
		let r: CGPoint = p + q
		XCTAssertEqual(r.x, 3)
		XCTAssertEqual(r.y, 3)
		
	}
	
	func testSubtractTwoPoints() {
		
		let p = CGPoint(x: 1, y: 1)
		let q = CGPoint(x: 2, y: 2)
		
		let r: CGPoint = q - p
		XCTAssertEqual(r.x, 1)
		XCTAssertEqual(r.y, 1)
		
	}
	
	func testAddAPoint() {
		
		var p = CGPoint(x: 1, y: 1)
		let q = CGPoint(x: 2, y: 2)
		
		p += q
		XCTAssertEqual(p.x, 3)
		XCTAssertEqual(p.y, 3)
		
	}

	func testSubtractAPoint() {
		
		var p = CGPoint(x: 1, y: 1)
		let q = CGPoint(x: 2, y: 2)
		
		p -= q
		XCTAssertEqual(p.x, -1)
		XCTAssertEqual(p.y, -1)
		
	}

	func testMultiplyByAFloat() {
		
		let p = CGPoint(x: 1, y: 1)
		let f: CGFloat = 2
		
		let q: CGPoint = p * f
		XCTAssertEqual(q.x, 2)
		XCTAssertEqual(q.y, 2)
		
	}
	
	func testDivideByAFloat() {
		
		let p = CGPoint(x: 1, y: 1)
		let f: CGFloat = 2
		
		let q: CGPoint = p / f
		XCTAssertEqual(q.x, 0.5)
		XCTAssertEqual(q.y, 0.5)
		
	}
	
	func testMultiplyInto() {
		
		var p = CGPoint(x: 1, y: 1)
		let f: CGFloat = 2
		
		p *= f
		XCTAssertEqual(p.x, 2)
		XCTAssertEqual(p.y, 2)
		
	}

	func testDivideInto() {
		
		var p = CGPoint(x: 1, y: 1)
		let f: CGFloat = 2
		
		p /= f
		XCTAssertEqual(p.x, 0.5)
		XCTAssertEqual(p.y, 0.5)
		
	}
	
	func testMultiplyBySize() {
		
		let p = CGPoint(x: 1, y: 2)
		let size = CGSize(width: 3, height: 4)
		
		let q = p * size
		XCTAssertEqual(q.x, 3)
		XCTAssertEqual(q.y, 8)
	}

	func testMultiplyBySizeInto() {
		
		var p = CGPoint(x: 1, y: 2)
		let size = CGSize(width: 3, height: 4)
		
		p *= size
		XCTAssertEqual(p.x, 3)
		XCTAssertEqual(p.y, 8)
	}

	func testAddTwoPointsIntoVector() {
		
		let p = CGPoint(x: 1, y: 1)
		let q = CGPoint(x: 2, y: 2)
		
		let r: CGVector = p + q
		XCTAssertEqual(r.dx, 3)
		XCTAssertEqual(r.dy, 3)
		
	}
	
	func testSubtractTwoPointsIntoVector() {
		
		let p = CGPoint(x: 1, y: 1)
		let q = CGPoint(x: 2, y: 2)
		
		let r: CGVector = q - p
		XCTAssertEqual(r.dx, 1)
		XCTAssertEqual(r.dy, 1)
		
	}
	
	func testAddPointAndVector() {
		
		let p = CGPoint(x: 1, y: 1)
		let q = CGVector(dx: 2, dy: 2)
		
		let r: CGPoint = p + q
		XCTAssertEqual(r.x, 3)
		XCTAssertEqual(r.y, 3)
		
	}
	
	func testSubtractPointAndVector() {
		
		let p = CGPoint(x: 1, y: 1)
		let q = CGVector(dx: 2, dy: 2)
		
		let r: CGPoint = p - q
		XCTAssertEqual(r.x, -1)
		XCTAssertEqual(r.y, -1)
		
	}
	
	func testAddAVectorIntoPoint() {
		
		var p = CGPoint(x: 1, y: 1)
		let q = CGVector(dx: 2, dy: 2)
		
		p += q
		XCTAssertEqual(p.x, 3)
		XCTAssertEqual(p.y, 3)
		
	}

	func testSubtractVectorIntoAPoint() {
		
		var p = CGPoint(x: 1, y: 1)
		let q = CGVector(dx: 2, dy: 2)
		
		p -= q
		XCTAssertEqual(p.x, -1)
		XCTAssertEqual(p.y, -1)
		
	}

	func testLength() {
		
		let p = CGPoint(x: 0, y: 4)
		let q = CGPoint(x: 3, y: 0)
		
		let length = p.length(to: q)
		XCTAssertEqual(length, 5)
		
	}

	func testAngle() {
		
		let p = CGPoint(x: 1, y: 1)
		let q = CGPoint(x: 0, y: 0)
		
		let angle = p.angle(between: q)
		XCTAssertEqual(angle, 0.7853981633974483)
		
	}

}
