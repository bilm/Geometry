//
//  Size.swift
//  Geometry
//
//  Created by Bil Moorhead on 2/1/20.
//  Copyright © 2020 Lightswitch Ink. All rights reserved.
//

import Foundation
import CoreGraphics


extension CGSize {
	
	public static var unit:CGSize {
		
		CGSize(
			width: 1, 
			height: 1
		)
		
	}
	
}


extension CGSize {
	
	public static func +(lhs:CGSize, rhs:CGSize) -> CGSize {
		
		CGSize(
			width: lhs.width + rhs.width,
			height: lhs.height + rhs.height
		)
		
	}
	
	public static func +=(lhs:inout CGSize, rhs:CGSize) { lhs = lhs + rhs }
	
}

extension CGSize {
	
	public static func *(s:CGSize, p:CGPoint) ->CGPoint {
		
		CGPoint(
			x: p.x * s.width,
			y: p.y * s.height
		)
		
	}


}

extension CGSize {
	
	public static func *(s:CGSize, c:CGFloat) ->CGSize {
		
		CGSize(
			width: s.width * c,
			height: s.height * c
		)
		
	}
	
	public static func /(s:CGSize, c:CGFloat) ->CGSize {
		
		CGSize(
			width: s.width / c,
			height: s.height / c
		)
		
	}

}


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
