//
//  Configuration.swift
//  LittleBirds
//
//  Created by JiangYe on 12/26/18.
//  Copyright © 2018 JiangYe. All rights reserved.
//

import Foundation
import CoreGraphics

struct ZPosition{
    static let background: CGFloat = 0
    static let obstacles: CGFloat = 1
}

struct PhysicsCategory{
    static let none:UInt32 = 0
    static let all: UInt32 = UInt32.max
    static let edge: UInt32 = 0x1
    static let bird: UInt32 = 0x1 << 1
    static let block: UInt32 = 0x1 << 2
    
}

extension CGPoint{
    static public func *(left:CGPoint, right: CGFloat) -> CGPoint{
        return CGPoint(x: left.x*right, y: left.y*right)
    }
    
    static public func - (left:CGPoint, right: CGPoint) -> CGPoint{
        return CGPoint(x: left.x - right.x , y: left.y - right.y)
    }
    
    static public func + (left:CGPoint, right: CGPoint) -> CGPoint{
        return CGPoint(x: left.x + right.x , y: left.y + right.y)
    }
}
