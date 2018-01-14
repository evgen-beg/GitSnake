//
//  Apple.swift
//  Sanke2
//
//  Created by Bogdan Novikov on 30.07.17.
//  Copyright © 2017 Bogdan Novikov. All rights reserved.
//

//                                      Apple.swift

import UIKit
import SpriteKit

//Яблоко
class Apple: SKShapeNode {
    
    //определяем как оно будет рисоваться
    convenience init(position: CGPoint) {
        self.init()
        //рисуем круг
        path = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: 10, height: 10)).cgPath
        //заливаем красным
        fillColor = UIColor.red
        //рамка тоже красная
        strokeColor = UIColor.green
        //ширина рамки 5 поинтов
        lineWidth = 2
        
        self.position = position
        
        //Добавялем физическое тело совпадающее с изображением яблока
        self.physicsBody = SKPhysicsBody(circleOfRadius: 10.0, center:CGPoint(x:5, y:5))
        //категория - яблоко
        self.physicsBody?.categoryBitMask = CollisionCategories.Apple
    }
}

