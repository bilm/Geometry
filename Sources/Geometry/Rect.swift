//
//  Rect.swift
//  Geometry
//
//  Created by Bil Moorhead on 2/1/20.
//  Copyright © 2020 Lightswitch Ink. All rights reserved.
//

import Foundation
import CoreGraphics

/// Unit Rect
extension CGRect {
	
	public static var unit: CGRect { 
		
		CGRect(
			x: 0, y: 0,
			width: 1, height: 1
		)
	
	}
	
}

extension CGRect {
	
	public var units: CGRect {
		
		CGRect(
			origin: origin / size,
			size: .unit
		)
		
	}
}

/// Initialize from a Center and a Radius
/// Initialize from a Center and an X and Y
extension CGRect {
	
	public init(center c:CGPoint, radius r:CGFloat) {
		
		self.init(
			x: c.x - r,
			y: c.y - r,
			width: r * 2,
			height: r * 2
		)
		
	}
	
	public init(center c:CGPoint, radiusX rx:CGFloat, radiusY ry:CGFloat) {
		
		self.init(
			x: c.x - rx,
			y: c.y - ry,
			width: rx * 2,
			height: ry * 2
		)
		
	}
	
}

/// the Extent of a Rect
extension CGRect {
	
	public var extent:CGPoint {
		
		CGPoint(
			x: maxX,
			y: maxY
		)
	
	}

}

/// the Center of a Rect
extension CGRect {
		
	public var center:CGPoint {
		
		CGPoint(
			x: midX,
			y: midY
		)
		
	}
	
}


/// Multiply by a Scalar giving a Rect

extension CGRect {

	public static func *(lhs: CGRect, rhs: CGFloat) -> CGRect {
		
		CGRect(
			x: lhs.minX * rhs, 
			y: lhs.minY * rhs, 
			width: lhs.width * rhs, 
			height: lhs.height * rhs
		)
		
	}
	
	public static func /(lhs: CGRect, rhs: CGFloat) -> CGRect {
		
		lhs / CGSize(width: rhs, height: rhs)
	}
	
}

/// Multiply by a Size giving a Rect
extension CGRect {
	
	public static func *(lhs: CGRect, rhs: CGSize) -> CGRect {
		
		CGRect(
			x: lhs.minX * rhs.width, 
			y: lhs.minY * rhs.height, 
			width: lhs.width * rhs.width, 
			height: lhs.height * rhs.height
		)

	}

	public static func /(lhs: CGRect, rhs: CGSize) -> CGRect {
		
		CGRect(
			x: lhs.minX / rhs.width, 
			y: lhs.minY / rhs.height, 
			width: lhs.width / rhs.width, 
			height: lhs.height / rhs.height
		)

	}
	
}

/// offset a Rect by a Vector
extension CGRect {
	
	public func offset(vector: CGVector) ->CGRect {
		
		offsetBy(dx: vector.dx, dy: vector.dy)
		
	}
	
}

/// Limit a Rect by a potential minimum Size and a potential
/// maximum Size
///
/// Constain a Rect inside another Rect
extension CGRect {

	public func limitBy(minimum:CGSize? = nil, maximum:CGSize? = nil) ->CGRect {
		
		var sz = size
		
		if let minimum = minimum { sz = sz.limit(minimum: minimum) }
		if let maximum = maximum { sz = sz.limit(maximum: maximum) }
		
		return CGRect(origin: origin, size: sz)
		
	}
	
	
	public func constrainInside(limits:CGRect) ->CGRect {
		
		var r = self
		
		let v1 = (limits.origin - r.origin).limit(minX: 0, minY: 0)
		r = r.offset(vector: v1)
		
		let v2 = (limits.extent - r.extent).limit(maxX: 0, maxY: 0)
		r = r.offset(vector: v2)
		
		return r
		
	}
	
}

/// Clamp a Point to be within a Rect
extension CGRect {
	
	public func clamp(point:CGPoint) ->CGPoint {
		
		CGPoint(
			x: max(minX, min(maxX, point.x)), 
			y: max(minY, min(maxY, point.y))
		)
		
	}
	
}
