//
//  ViewController.swift
//  Gacha
//
//  Created by 所　紀彦 on 2019/04/05.
//  Copyright © 2019年 所　紀彦. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func Gacha() {
        self.performSegue(withIdentifier: "result", sender: nil)
    }

}
