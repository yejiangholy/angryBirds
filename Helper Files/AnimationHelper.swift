//
//  AnimationHelper.swift
//  LittleBirds
//
//  Created by JiangYe on 12/28/18.
//  Copyright © 2018 JiangYe. All rights reserved.
//

import SpriteKit

class AnimationHelper{
    
    static func loadTextures(from atlas: SKTextureAtlas, withName name:String)-> [SKTexture]{
        var textures = [SKTexture]()
        
        for index in 0..<atlas.textureNames.count{
            let textureName = name + String(index+1)
            textures.append(atlas.textureNamed(textureName))
        }
        return textures
    }
    
}
