//
//  File.swift
//  
//
//  Created by Bil Moorhead on 2/1/20.
//

import Foundation
import CoreGraphics

extension CGVector {
	
	public static var unit: CGVector {
		
		CGVector(dx: 1, dy: 1)
	}
	
	public static var xAxis: CGVector {
		
		CGVector(dx: 1, dy: 0)
		
	}
	
	public static var yAxis: CGVector {
		
		CGVector(dx: 0, dy: 1)
		
	}
	
}

extension CGVector {
	
	public static func +(lhs: CGVector, rhs: CGPoint) ->CGPoint {
		
		CGPoint(
			x: lhs.dx + rhs.x,
			y: lhs.dy + rhs.y
		)
		
	}

}


extension CGVector {
	
	public static func +(lhs:CGVector, rhs:CGVector) ->CGVector {
		
		CGVector(
			dx: lhs.dx + rhs.dx,
			dy: lhs.dy + rhs.dy
		)
		
	}
	public static func -(lhs:CGVector, rhs:CGVector) ->CGVector {
		
		CGVector(
			dx: lhs.dx - rhs.dx,
			dy: lhs.dy - rhs.dy
		)
		
	}

}

extension CGVector { 

	public static func *(lhs:CGVector, rhs:CGFloat) ->CGVector {
		
		CGVector(
			dx: lhs.dx * rhs,
			dy: lhs.dy * rhs
		)
		
	}
	public static func /(lhs:CGVector, rhs:CGFloat) ->CGVector {
		
		CGVector(
			dx: lhs.dx / rhs,
			dy: lhs.dy / rhs
		)
		
	}

}

extension CGVector {
	
	public func limit(maxX: CGFloat, maxY: CGFloat) ->CGVector {
		
		CGVector(
			dx: min(dx, maxX),
			dy: min(dy, maxY)
		)
		
	}
	
	public func limit(minX: CGFloat, minY: CGFloat) ->CGVector {
		
		CGVector(
			dx: max(dx, minX),
			dy: max(dy, minY)
		)
		
	}

}

extension CGVector {
	
	public var polar:(r:CGFloat, theta:CGFloat) { 
		
		(length, theta)
		
	}

	public var length: CGFloat {
		
		hypot(dx, dy)
		
	}

	public var theta: CGFloat { 
	
		atan2(dy, dx)
		
	}

	public func angle(between vector: CGVector) ->CGFloat {
	
		atan2(dy - vector.dy, dx - vector.dx)
		
	}
	
	
}
