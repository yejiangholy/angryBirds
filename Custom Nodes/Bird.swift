//
//  Bird.swift
//  LittleBirds
//
//  Created by JiangYe on 12/26/18.
//  Copyright © 2018 JiangYe. All rights reserved.
//

import SpriteKit

enum BirdType: String {
    case red, blue, yellow, gray
}

class Bird: SKSpriteNode {
    var birdType: BirdType
    var grabbed = false
    var flying = false {
        didSet{
            if flying{
                physicsBody?.isDynamic = true
            }
        }
    }
    
    init(type: BirdType){
        birdType = type
        
        let color: UIColor!
        switch type{
        case .red:
            color = UIColor.red
        case .blue:
            color = UIColor.blue
        case .yellow:
            color = UIColor.yellow
        case .gray:
            color = UIColor.lightGray
        }
        super.init(texture: nil,color:color ,size:CGSize(width: 40.0, height: 40.0))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
