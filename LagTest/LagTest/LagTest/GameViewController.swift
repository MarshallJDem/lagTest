//
//  GameViewController.swift
//  LagTest
//
//  Created by Marshall Demirjian on 1/7/17.
//  Copyright © 2017 MarshallD. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadGameScene()
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
    func loadGameScene() {
        let scene = GameScene(size: view.bounds.size)
        scene.scaleMode = .resizeFill
        let transitionType = SKTransition.flipHorizontal(withDuration: 1.0)
        let skView1 = view as! SKView
        skView1.showsFPS = true
        skView1.showsNodeCount = true
        skView1.ignoresSiblingOrder = true
        skView1.presentScene(scene,transition: transitionType)
    }
}
