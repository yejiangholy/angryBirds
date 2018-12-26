//
//  Configuration.swift
//  LittleBirds
//
//  Created by JiangYe on 12/26/18.
//  Copyright © 2018 JiangYe. All rights reserved.
//

import Foundation
import CoreGraphics

extension CGPoint{
    static public func *(left:CGPoint, right: CGFloat) -> CGPoint{
        return CGPoint(x: left.x*right, y: left.y*right)
    }
}
