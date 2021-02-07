//
//  ResultViewController.swift
//  Gacha
//
//  Created by Sallivan James on 2021/02/07.
//

import UIKit

class ResultViewController: UIViewController {
    
//    乱数を入れるためのInt型の変数を用意
    var number: Int!
    
//    背景画像とモンスターの画像を表示するためのImageViewを用意
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var monsterImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        値によってmonsterImageViewに表示するモンスターの画像を変える
//        0~9までのランダムな数(乱数)を発生させる
        number = Int.random(in: 0...9)
        if number == 9{
//            激レアモンスター
            monsterImageView.image = UIImage(named: "monster010")
            backgroundImageView.image = UIImage(named: "bg_gold")
        }else if number > 7{
//            レアモンスター
            monsterImageView.image = UIImage(named: "monster006")
            backgroundImageView.image = UIImage(named:"bg_red")
        }else{
//            ノーマルモンスター
            monsterImageView.image = UIImage(named: "monster003")
            backgroundImageView.image = UIImage(named: "bg_blue")
        }
    }
//        ResultViewController
    @IBAction func back(){
        self.dismiss(animated: true, completion: nil)
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
