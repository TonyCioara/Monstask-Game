//
//  GameViewController.swift
//  MontaskGame
//
//  Created by Tony Cioara on 11/20/17.
//  Copyright © 2017 Tony Cioara. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    
    var scene: GameScene? = nil
    
    
    @IBOutlet weak var gameView: UIView!
    
    gameView.isHidden = true
    
    @IBAction func outsideButton(_ sender: Any) {
        //        guard let scene = self.scene else {
        //            return
        //        }
        
        
        let monsterA = Monster(image: "", health: 100, power: 23, critChance: 50)
        let monsterB = Monster(image: "", health: 100, power: 23, critChance: 50)
        
        loadGameScene(monsterA: monsterA, monsterB: monsterB)
    }
    
    
    func loadGameScene(monsterA: Monster, monsterB: Monster) {
        
        if let view = gameView as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene") {
                // Set the scale mode to scale to fit the window
                self.scene = scene as? GameScene
                scene.scaleMode = .aspectFill
                
                // Present the scene
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
