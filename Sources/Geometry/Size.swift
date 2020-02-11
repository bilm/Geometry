//
//  Size.swift
//  Geometry
//
//  Created by Bil Moorhead on 2/1/20.
//  Copyright © 2020 Lightswitch Ink. All rights reserved.
//

import Foundation
import CoreGraphics

/// a Unit Size
extension CGSize {
	
	public static var unit:CGSize {
		
		CGSize(
			width: 1, 
			height: 1
		)
		
	}
	
}

/// Addition between two Sizes
extension CGSize {
	
	public static func +(lhs:CGSize, rhs:CGSize) -> CGSize {
		
		CGSize(
			width: lhs.width + rhs.width,
			height: lhs.height + rhs.height
		)
		
	}
	
	public static func +=(lhs:inout CGSize, rhs:CGSize) { lhs = lhs + rhs }
	
}

/// Multiply a Size and a Float
extension CGSize {
	
	public static func *(lhs: CGSize, rhs: CGFloat) ->CGSize {
		
		CGSize(
			width: lhs.width * rhs,
			height: lhs.height * rhs
		)
		
	}
	
	public static func /(lhs: CGSize, rhs: CGFloat) ->CGSize {
		
		CGSize(
			width: lhs.width / rhs,
			height: lhs.height / rhs
		)
		
	}

}

/// Multiply a Size and a Point
extension CGSize {
	
	public static func *(lhs: CGSize, rhs: CGPoint) ->CGPoint {
		
		CGPoint(
			x: rhs.x * lhs.width,
			y: rhs.y * lhs.height
		)
		
	}


}

/// Multiply a Size and a Vector
extension CGSize {
	
	public static func *(lhs: CGSize, rhs: CGVector) ->CGPoint {
		
		CGPoint(
			x: rhs.dx * lhs.width,
			y: rhs.dy * lhs.height
		)
		
	}


}

/// Limit a Size by a potential maximum Width and Height
extension CGSize {
	
	public func limit(maxWidth:CGFloat, maxHeight:CGFloat) ->CGSize {
		
		CGSize(
			width: min(width, maxWidth),
			height: min(height, maxHeight)
		)
		
	}
	
	public func limit(maximum:CGSize) -> CGSize {
		
		CGSize(
			width: min(width, maximum.width),
			height: min(height, maximum.height)
		)
		
	}
	
}

/// Limit a Size by a potential minimum Width and Height
extension CGSize {
	
	public func limit(minWidth:CGFloat, minHeight:CGFloat) ->CGSize {
		
		CGSize(
			width: max(width, minWidth),
			height: max(height, minHeight)
		)
		
	}
	public func limit(minimum:CGSize) -> CGSize {
		
		CGSize(
			width: max(width, minimum.width),
			height: max(height, minimum.height)
		)
		
	}
	
}
