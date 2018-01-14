//
//  ViewController.swift
//  Sanke2
//
//  Created by Евгений on 31.12.2017.
//  Copyright © 2017 Pinspb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func rstAcion(_ sender: UIButton) {
        let alert = UIAlertController(title: "Загаловок", message: "Сообщение", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    


}
