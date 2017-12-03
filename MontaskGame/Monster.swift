//
//  Monster.swift
//  MontaskGame
//
//  Created by Tony Cioara on 11/20/17.
//  Copyright © 2017 Tony Cioara. All rights reserved.
//

import Foundation
import SpriteKit

class Monster: SKSpriteNode {
    
    var health = 300
    var power = 30
    
    /* You are required to implement this for your subclass to work */
    override init(texture: SKTexture?, color: UIColor, size: CGSize) {
        super.init(texture: texture, color: color, size: size)
    }
    
    /* You are required to implement this for your subclass to work */
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
