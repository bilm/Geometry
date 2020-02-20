//
//  Point.swift
//  Geometry
//
//  Created by Bil Moorhead on 2/1/20.
//  Copyright © 2020 Lightswitch Ink. All rights reserved.
//

import Foundation
import CoreGraphics


/// Unit Point
extension CGPoint {
	
	public static var unit:CGPoint {
		
		CGPoint(x: 1, y: 1)
		
	}
	
	public var units: CGPoint {
		
		self / hypot(x,y)
		
	}
	
}

/// Singularity
extension CGPoint {
	
	var singularity: CGRect {
		
		CGRect(origin: self, size: .zero)
		
	}
}

/// Addition between two Points giving a Point
extension CGPoint {
	
	public static func +(lhs: CGPoint, rhs: CGPoint) ->CGPoint {
		
		CGPoint(
			x: lhs.x + rhs.x,
			y: lhs.y + rhs.y
		)
		
	}
	
	public static func -(lhs: CGPoint, rhs: CGPoint) ->CGPoint {
		
		CGPoint(
			x: lhs.x - rhs.x,
			y: lhs.y - rhs.y
		)
		
	}
	
	//
	
	public static func +=(lhs:inout Self, rhs:Self) { lhs = lhs + rhs }
	public static func -=(lhs:inout Self, rhs:Self) { lhs = lhs - rhs }
	
}

/// Multiplication by a Float giving a Point
extension CGPoint {

	public static func *(lhs: CGPoint, rhs: CGFloat) ->CGPoint {
		
		CGPoint(
			x: lhs.x * rhs,
			y: lhs.y * rhs
		)
		
	}
	public static func /(lhs: CGPoint, rhs: CGFloat) ->CGPoint {
		
		CGPoint(
			x: lhs.x / rhs,
			y: lhs.y / rhs
		)
		
	}

	//
	
	public static func *=(lhs:inout Self, rhs:CGFloat) { lhs = lhs * rhs }
	public static func /=(lhs:inout Self, rhs:CGFloat) { lhs = lhs / rhs }

}

/// Multiplication by a Size giving a Point
extension CGPoint {

	public static func *(lhs: CGPoint, rhs:CGSize) ->CGPoint {
		
		CGPoint(
			x: lhs.x * rhs.width,
			y: lhs.y * rhs.height
		)
		
	}
	
	public static func /(lhs: CGPoint, rhs:CGSize) ->CGPoint {
		
		CGPoint(
			x: lhs.x / rhs.width,
			y: lhs.y / rhs.height
		)
		
	}
	
	//
	
	public static func *=(lhs:inout Self, rhs:CGSize) { lhs = lhs * rhs }	

}

/// Addition between two Points giving a Vector
extension CGPoint {
	
	public static func +(lhs: CGPoint, rhs: CGPoint) ->CGVector {
		
		CGVector(
			dx: lhs.x + rhs.x,
			dy: lhs.y + rhs.y
		)
		
	}

	public static func -(lhs: CGPoint, rhs: CGPoint) ->CGVector {
		
		CGVector(
			dx: lhs.x - rhs.x,
			dy: lhs.y - rhs.y
		)
		
	}

}

/// Addition between a Point and a Vector giving a Point
extension CGPoint {
	
	public static func +(lhs: CGPoint, rhs: CGVector) ->CGPoint {
		
		CGPoint(
			x: lhs.x + rhs.dx,
			y: lhs.y + rhs.dy
		)
		
	}
	
	public static func -(lhs: CGPoint, rhs: CGVector) ->CGPoint {
		
		CGPoint(
			x: lhs.x - rhs.dx,
			y: lhs.y - rhs.dy
		)
		
	}
	
	public static func +=(lhs:inout Self, rhs:CGVector) { lhs = lhs + rhs }
	public static func -=(lhs:inout Self, rhs:CGVector) { lhs = lhs - rhs }

}

/// Length between two Points
/// Angle between two Points
extension CGPoint {
	
	public func length(to point: CGPoint) -> CGFloat {
		
		hypot(x - point.x, y - point.y)
		
	}
	
	public func angle(between point: CGPoint) -> CGFloat {
		
		atan2(y-point.y, x - point.x) 

	}
}
