//
//  SkNode+Extensions.swift
//  LittleBirds
//
//  Created by JiangYe on 12/27/18.
//  Copyright © 2018 JiangYe. All rights reserved.
//

import SpriteKit

extension SKNode{
    
    func aspectScale(to size: CGSize, width:Bool, multiplier: CGFloat){
        let scale = width ? (size.width * multiplier) / self.frame.size.width :
        (size.height * multiplier) / self.frame.size.height
        self.setScale(scale)
    }
}
