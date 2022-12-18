//
//  birthday_increase.swift
//  happy birthday
//
//  Created by kaito on 2022/12/11.
//

import UIKit

class birthday_increase: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //名前
    @IBOutlet weak var name: UITextField!
    //誕生日 month/day
    @IBOutlet weak var month: UITextField!
    @IBOutlet weak var day: UITextField!
    

//    //ツールバー
//    let toolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: 320, height: 40))
//    toolbar;.barStyle = UIBarStyle.default
//    toolbar.sizeToFit()
//    //閉じるボタンを右に配置するためのスペース
//    let spacer = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.fixedSpace, target: self, action: nil)
//    //閉じるボタン
//    let commitButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: self, action: #selector(self.commitButtonTappend))
//    toolbar.items = [spacer, commitButton]
//
//
//    day.inputAccessoryView = toolbar
//    month.inputAccessoryView = toolbar
    
    //確認ボタンがボタンが押されたら
    @IBAction func decision(_ sender: Any) {
        day_pseudo = Int(day.text!)!
        month_pseudo = Int(month.text!)!
        name_pseudo = name.text!
    }
}
