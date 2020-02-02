//
//  Accelerate.swift
//  
//
//  Created by Bil Moorhead on 2/1/20.
//

import Foundation
import Accelerate

extension CGVector {

	@available(iOS 13.0, *)	
	public var euclidianNorm: CGFloat {
		
		var dv = [dx.native, dy.native]
		return CGFloat(cblas_dnrm2(2, &dv, 1))
		
	}
	
	@available(iOS 13.0, *)	
	public func dotProduct(_ vector: CGVector) ->CGFloat {
		
		var dv1 = [dx.native, dy.native]
		var dv2 = [vector.dx.native, vector.dy.native]
		return CGFloat(cblas_ddot(2, &dv1, 1, &dv2, 1))
		
	}
	
	@available(iOS 13.0, *)	
	public func theta(_ vector: CGVector) ->CGFloat {
		
		//  INFO - theta = arccos( A·B / (|A| * |B|) ) 
		//       - cos(theta) = A·B / (|A|*|B|)
		//       - cos(theta) * |A|*|B| = A·B
		acos(dotProduct(vector) / (euclidianNorm * vector.euclidianNorm))
		
	}

}

