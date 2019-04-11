//
//  ResultViewController.swift
//  Gacha
//
//  Created by 所　紀彦 on 2019/04/05.
//  Copyright © 2019年 所　紀彦. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    //一番後ろの背景画像
    @IBOutlet var haikeiImageView: UIImageView!
    
    //モンスターを表示する画像
    @IBOutlet var monsterImageView: UIImageView!
    
    //モンスター画像を保存しておく配列
    var monsterArray: [UIImage]!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        
        
        
        //0~9の間でらんだむに数字を発生させる
        let number = Int.random(in: 0..<10)
        
        //モンスターの画像を10枚追加する
        monsterArray = [UIImage(named: "monster001.png")!,
        UIImage(named: "monster002.png")!,
        UIImage(named: "monster003.png")!,
        UIImage(named: "monster004.png")!,
        UIImage(named: "monster005.png")!,
        UIImage(named: "monster006.png")!,
        UIImage(named: "monster007.png")!,
        UIImage(named: "monster008.png")!,
        UIImage(named: "monster009.png")!,
        UIImage(named: "monster010.png")!,]
        
        //ランダムに選んだモンスターを表示させる
        monsterImageView.image = monsterArray[number]
        
        if number == 9 {
            haikeiImageView.image = UIImage(named: "bg_gold@2x.png")
        }else if number > 6 {
            haikeiImageView.image = UIImage(named: "bg_red@2x.png")
        }else{
            haikeiImageView.image = UIImage(named: "bg_blue@2x.png")
        }
        
        
        
    }
    
    @IBAction func modoru() {
        self.dismiss(animated: true,completion: nil)
    }
    
    override func  viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
    
    let animation = CABasicAnimation(keyPath: "transform")
    animation.fromValue = NSNumber(value :0)
    animation.toValue = NSNumber(value: 2*Double.pi)
    animation.valueFunction = CAValueFunction(name: CAValueFunctionName.rotateZ)
    animation.duration = 5
    animation.repeatCount = Float.infinity
    haikeiImageView.layer.add(animation, forKey: nil)
    
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
