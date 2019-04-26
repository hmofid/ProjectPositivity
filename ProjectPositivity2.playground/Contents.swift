//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport
import AVFoundation
import SpriteKit

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        
        let cloudbackground = UIImage(named: "CloudBackGroundLong.png")
        let cloudbackgroundview = UIImageView(image: cloudbackground)
        cloudbackgroundview.contentMode = UIView.ContentMode.scaleAspectFit
        view.addSubview(cloudbackgroundview)
 
        
        let logo = UIImage(named: "logotransparent.png")
        let logoview = UIImageView(image: logo)
        logoview.frame = CGRect(x: 0, y: 100, width: 400, height: 350)
    view.addSubview(logoview)
        
        let next = UIButton(frame: CGRect(x: 40, y: 350, width: 300, height: 300))
        next.setImage(UIImage(named: "nextButton.png"), for: .normal)
        view.addSubview(next);
        

        next.addTarget(self, action: #selector(buttonPressed(sender:)), for: UIControl.Event.touchUpInside)
        
        /*
        view.backgroundColor = UIColor(red: 250/255.0, green: 218/255.0, blue: 221/255.0, alpha: 1)
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 50, width: 400, height: 100)
        label.font = UIFont(name: "Helvetica-Bold", size: 35)
        label.numberOfLines = 2;
        label.textAlignment = .center
        label.text = "Welcome to Project Positivity :)"
        label.textColor = UIColor(red:
            31/255.0, green: 61/255.0, blue: 12/255.0, alpha: 1)
        
        view.addSubview(label)
        
        let emojis = UIImage(named: "HappyEmojis.png")
        let imageViewOfHappyEmojis = UIImageView(image: emojis)
       imageViewOfHappyEmojis.frame = CGRect(x: 0, y: 200, width: 400, height: 100)
        view.addSubview(imageViewOfHappyEmojis)
        */
        
        self.view = view
        
    
        
    }
    
    @objc func buttonPressed(sender: UIButton!) {
        print("button pressed!");
        
        let view2 = SKView(frame: CGRect(x: 0, y: 0, width: 1024, height: 1024))
        view2.isMultipleTouchEnabled = true
        view2.ignoresSiblingOrder = true
        view2.contentMode = .scaleToFill
        view2.showsFPS = true
        view2.showsNodeCount = true
        view.addSubview(view2)
        // Load the SKScene from 'GameScene.sks'
        
        if let scene = GameScene(fileNamed: "GameScene") {
            //if let scene = LevelFourScene(fileNamed:"LevelFour") {
            print("found scene")
            // Set the scale mode to scale to fit the window
            scene.scaleMode = .aspectFill
            
            // Present the scene
            view2.presentScene(scene)
        }

    }
    
}


PlaygroundPage.current.liveView = MyViewController()
