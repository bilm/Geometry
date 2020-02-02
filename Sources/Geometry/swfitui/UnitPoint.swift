//
//  UnitPoint.swift
//  Geometry
//
//  Created by Bil Moorhead on 2/1/20.
//  Copyright © 2020 Lightswitch Ink. All rights reserved.
//

import CoreGraphics

#if canImport(SwiftUI)

import SwiftUI

@available(iOS 13.0, *)
extension CGSize {
	
	/// Calculate a Point via Size and UnitPoint
	/// - Parameter unit: a Unit Point
	func unit(_ unit: UnitPoint) ->CGPoint {
		
		CGPoint(
			x: unit.x * width,
			y: unit.y * height
		)

	}

}

@available(iOS 13.0, *)
extension CGRect {
	
	/// Calculate a Point via a Rect and UnitPoint
	/// - Parameter unit: a Unit Point
	func unit(_ unit: UnitPoint) ->CGPoint {
		
		size.unit(unit) + origin
		
	}
}
#endif
