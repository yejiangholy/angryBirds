//
//  LevelScene.swift
//  LittleBirds
//
//  Created by JiangYe on 12/28/18.
//  Copyright © 2018 JiangYe. All rights reserved.
//

import SpriteKit

class LevelScene: SKScene {

     var sceneManagerDelegate: SceneManagerDelegate?
    
    override func didMove(to view: SKView) {
        setupLevelSelection()
    }
    
    func setupLevelSelection(){
        var level = 1
        let columnStaringPoint = frame.midX/2
        let rowStaringPoint = frame.midY + frame.midY/2
        for row in 0..<3{
            for column in 0..<3{
                let levelBoxButton = SpriteKitButton(defaultButtonImage: "woodButton", action: goToGameSceneFor, index: level)
                levelBoxButton.position = CGPoint(x:columnStaringPoint + CGFloat(column)*columnStaringPoint, y:rowStaringPoint - CGFloat(row)*(frame.midY/2))
                levelBoxButton.zPosition = ZPosition.hudBackground
                addChild(levelBoxButton)
                let levelLabel = SKLabelNode(fontNamed: "AvenirNext-Bold")
                levelLabel.fontSize = 200.0
                levelLabel.verticalAlignmentMode = .center
                levelLabel.text = "\(level)"
                levelLabel.aspectScale(to: levelBoxButton.size, width: false, multiplier: 0.5)
                levelLabel.zPosition = ZPosition.hudLable
                levelBoxButton.addChild(levelLabel)
                levelBoxButton.aspectScale(to: frame.size, width: false, multiplier: 0.2)
                level += 1
            }
        }
    }
    
    func goToGameSceneFor(level: Int){
        sceneManagerDelegate?.presentGameSceneFor(level: level)
    }
    
}
