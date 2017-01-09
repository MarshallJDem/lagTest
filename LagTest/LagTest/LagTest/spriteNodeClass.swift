import UIKit
import SpriteKit
import Foundation



class spriteNodeClass: SKSpriteNode {
    
    init() {
        
        super.init(texture: spaceShip, color: UIColor.clear, size: CGSize(width: 100, height: 100))
        
        self.physicsBody = SKPhysicsBody(circleOfRadius: self.size.width/2)
        
        
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
