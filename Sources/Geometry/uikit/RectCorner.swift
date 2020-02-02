//
//  RectCorner.swift
//  
//
//  Created by Bil Moorhead on 2/1/20.
//

#if canImport(UIKit)

import UIKit

extension UIRectCorner {
	
	public func corner(of rect: CGRect ) ->CGPoint {
		
		switch self {
		case .topLeft:     return CGPoint(x: rect.minX, y: rect.minY)
		case .topRight:    return CGPoint(x: rect.maxX, y: rect.minY)
		case .bottomLeft:  return CGPoint(x: rect.minX, y: rect.maxY)
		case .bottomRight: return CGPoint(x: rect.maxX, y: rect.maxY)
			
		default:           return .zero 
		}
		
	}
	
}

#endif
