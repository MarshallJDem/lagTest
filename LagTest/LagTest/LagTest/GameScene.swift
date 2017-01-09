import SpriteKit
import Darwin
import Foundation

var spaceShip = SKTexture(imageNamed: "Spaceship")

class GameScene: SKScene{
    
    var square = SKSpriteNode(color: UIColor.black, size: CGSize(width: 100,height: 100))
    
    override func didMove(to view: SKView) {
        backgroundColor = SKColor.white
        self.addChild(square)
        self.addChild(spriteNodeClass())
        
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches{
            var positionInScreen = touch.location(in: self)
            square.position = positionInScreen
            
        }
    }
    }
