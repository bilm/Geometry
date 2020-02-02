//
//  Operators.swift
//  Geometry
//
//  Created by Bil Moorhead on 2/1/20.
//  Copyright © 2020 Lightswitch Ink. All rights reserved.
//

import Foundation
import CoreGraphics

precedencegroup MeasurePrecedence {
	
	associativity: left
	lowerThan: MultiplicationPrecedence
	
}

/// distance
infix operator ~ : MeasurePrecedence  

/// midpoint
prefix operator †

//
//
//

extension CGPoint {
	
	public static func ^(lhs: CGPoint, rhs:CGPoint) ->CGFloat {
		
		lhs.angle(between: rhs) 
		
	}
	
	public static func ~(lhs: CGPoint, rhs: CGPoint) ->CGFloat { 

		lhs.length(to: rhs)
	
	}

}

extension CGRect {
	
	public static prefix func †(rect: CGRect) ->CGPoint { rect.center }

}

extension CGVector {
	
	public static func ^(lhs:CGVector, rhs:CGVector) ->CGFloat {
		
		lhs.angle(between: rhs)
		
	}

}
