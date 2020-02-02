//
//  UIEdgeInsetsTests.swift
//  Geometry
//
//  Created by Bil Moorhead on 2/1/20.
//  Copyright © 2020 Lightswitch Ink. All rights reserved.
//

#if os(iOS)

import XCTest
@testable import Geometry

final class UIEdgeInsetsTests: XCTestCase {

	func testInsetConstant() {
		
		let insets = UIEdgeInsets(constant: 2)
		
		XCTAssertEqual(insets.top, 2)
		XCTAssertEqual(insets.left, 2)
		XCTAssertEqual(insets.right, 2)
		XCTAssertEqual(insets.bottom, 2)
		
	}

	func testInsetViaSize() {
		
		let size = CGSize(width: 2, height: 2)
		let insets = UIEdgeInsets(size: size)
		
		XCTAssertEqual(insets.top, 2)
		XCTAssertEqual(insets.left, 2)
		XCTAssertEqual(insets.right, 2)
		XCTAssertEqual(insets.bottom, 2)
		
	}

	func testInsetRect() {
		
		let rect = CGRect(x: 0, y: 0, width: 10, height: 10)
		let insets = UIEdgeInsets(constant: 2)
		
		let inward = insets.inset(rect)
		XCTAssertEqual(inward.origin.x, 2)
		XCTAssertEqual(inward.origin.y, 2)
		XCTAssertEqual(inward.size.width, 6)
		XCTAssertEqual(inward.size.height, 6)
		
	}
	
}

#endif
