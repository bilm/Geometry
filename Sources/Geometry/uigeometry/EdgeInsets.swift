//
//  EdgeInsets.swift
//  Geometry
//
//  Created by Bil Moorhead on 2/1/20.
//  Copyright © 2020 Lightswitch Ink. All rights reserved.
//

import Foundation
import CoreGraphics

#if canImport(UIKit)

import UIKit

extension UIEdgeInsets {
	
	public init(constant: CGFloat) {
		
		self.init(
			top: constant,
			left: constant,
			bottom: constant,
			right: constant
		)
		
	}
	
	public init(size: CGSize) {
		
		self.init(
			top: size.height,
			left: size.width,
			bottom: size.height,
			right: size.width
		)
		
	}
	
}

extension UIEdgeInsets {
	
	public func inset(_ rect: CGRect) ->CGRect { 
		
		rect.inset(by: self)
		
	}

}

#endif
