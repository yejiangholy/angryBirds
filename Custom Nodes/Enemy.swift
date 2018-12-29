//
//  Enemy.swift
//  LittleBirds
//
//  Created by JiangYe on 12/29/18.
//  Copyright © 2018 JiangYe. All rights reserved.
//

import SpriteKit

enum EnemyType:String{
    case orange
}

class Enemy: SKSpriteNode {

    let type: EnemyType
    var health: Int
    let animationFrames:[SKTexture]
    
   
}
