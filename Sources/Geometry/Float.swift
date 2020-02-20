//
//  File.swift
//  
//
//  Created by Bil Moorhead on 2/1/20.
//

import Foundation
import CoreGraphics

/// Give a good description of a Float
extension CGFloat: LosslessStringConvertible {
	
	public init?(_ description: String) {
		
		guard let double = Double(description) else { return nil }
		self = CGFloat( double )
		
	}
	
}

/// Multiply a Float and a Point
extension CGFloat {
	
	public static func *(lhs: CGFloat, rhs: CGPoint) ->CGPoint {
		
		CGPoint(
			x: rhs.x * lhs,
			y: rhs.y * lhs
		)
		
	}

}

/// Multiply a Float and a Size
extension CGFloat {
	
	public static func *(lhs: CGFloat, rhs: CGSize) ->CGSize {
		
		CGSize(
			width: rhs.width * lhs,
			height: rhs.height * lhs
		)
		
	}

}

/// multiply a float and a Vector
extension CGFloat {
	
	public static func *(lhs: CGFloat, rhs: CGVector) ->CGVector {
		
		CGVector(
			dx: rhs.dx * lhs,
			dy: rhs.dy * lhs
		)
		
	}

}

/// multipl a float and a Rect
extension CGFloat {
	
	public static func *(lhs: CGFloat, rhs: CGRect) -> CGRect {
		
		CGRect(
			x: rhs.minX * lhs, 
			y: rhs.minY * lhs, 
			width: rhs.width * lhs, 
			height: rhs.height * lhs
		)

	}

}

/// Answer if two Floats are close enough
extension CGFloat {
	
	public func closeEnough(to float:CGFloat) ->Bool {
		
		abs(self - float) <= ulp
		
	}

}
