//
//  GameViewController.swift
//  Sanke2
//
//  Created by Bogdan Novikov on 30.07.17.
//  Copyright © 2017 Bogdan Novikov. All rights reserved.
//

//                                      GameViewController.swift

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    
    //метод наследуется от класса UIViewController (поэтому вызываем через super)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // создаем экземпляр сцены
        let scene = GameScene(size: view.frame.size)  //view.bounds.size
        //получаем главную область экрана
        let skView = view as! SKView
        //включаем отображение fps (Количество кадров в секунду)
        skView.showsFPS = true
        //показывать количество объектов на экране
        skView.showsNodeCount = true
        //включает включаем произволный порядок ренденги объектов в узле
        skView.ignoresSiblingOrder = true
        //режим отображения сцены, растягивается на все доступное пространство
        scene.scaleMode = .resizeFill
        //добавляем сцену на экран
        skView.presentScene(scene)
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
                                                                    // спрячет статус бар
    override var prefersStatusBarHidden: Bool {
        return true
    }
    

    
    // Я неопнял как вызвать эту функцию когда змея врезается в стену
    
    @IBAction func rstAcion(_ sender: UIButton) {
        let alert = UIAlertController(title: "Загаловок", message: "Сообщение", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }


}
