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
	public static func *(lhs:Self, rhs:UnitPoint) ->CGPoint { CGPoint(x: lhs.width * rhs.x, y: lhs.height * rhs.y) }
	public static func *(lhs:UnitPoint, rhs:Self) ->CGPoint { rhs * lhs }

}

@available(iOS 13.0, *)
extension CGRect {
	
	/// Calculate a Point via a Rect and UnitPoint
	/// - Parameter unit: a Unit Point
	func unit(_ unit: UnitPoint) ->CGPoint {
		
		(size * unit) + origin
		
	}
}

@available(iOS 13.0, *)
extension UnitPoint {
	
	var outward: UnitPoint {
		
		switch self {
		
		case .topLeading:		return .init(x: -1, y: -1)
		case .topTrailing:		return .init(x:  1, y: -1)
		case .bottomLeading:	return .init(x: -1, y:  1)
		case .bottomTrailing:	return .init(x:  1, y:  1)

		case .top:				return .init(x:  0, y: -1)
		case .leading:			return .init(x: -1, y:  0)
		case .bottom:			return .init(x:  0, y:  1)
		case .trailing:			return .init(x:  1, y:  0)
			
		case .zero:				return .init(x: -1, y: -1)
		case .center:			return .zero
			
		default: 				return .zero
			
		}
	}
	
}

#endif
