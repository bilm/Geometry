//
//  File.swift
//  
//
//  Created by Bil Moorhead on 2/1/20.
//

import Foundation
import CoreGraphics

extension CGFloat: LosslessStringConvertible {
	
	public init?(_ description: String) {
		
		guard let double = Double(description) else { return nil }
		self = CGFloat( double )
		
	}
	
}

extension CGFloat {
	
	public static func *(lhs: CGFloat, rhs: CGPoint) ->CGPoint {
		
		CGPoint(
			x: rhs.x * lhs,
			y: rhs.y * lhs
		)
		
	}

}

extension CGFloat {
	
	public static func *(lhs: CGFloat, rhs: CGSize) ->CGSize {
		
		CGSize(
			width: rhs.width * lhs,
			height: rhs.height * lhs
		)
		
	}

}

extension CGFloat {
	
	public static func *(lhs: CGFloat, rhs: CGVector) ->CGVector {
		
		CGVector(
			dx: rhs.dx * lhs,
			dy: rhs.dy * lhs
		)
		
	}

}

extension CGFloat {
	
	public func closeEnough(to float:CGFloat) ->Bool {
		
		abs(self - float) <= ulp
		
	}

}
