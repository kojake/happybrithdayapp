//
//  birthday_increase_confirmation.swift
//  happy birthday
//
//  Created by kaito on 2022/12/11.
//

import UIKit

class birthday_increase_confirmation: UIViewController {
    
    //名前と誕生日の確認label
    @IBOutlet weak var name_label: UILabel!
    @IBOutlet weak var birthday_label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        //pseudoからgetしlabelに反映する
        birthday_label.text = String(month_pseudo) + "月" + String(day_pseudo) + "日"
        name_label.text = name_pseudo
    }
    
    //決定ボタンが押されたら
    var birthday_list_house = (String(name_pseudo) + "：" + String(month_pseudo) + "/" + String(day_pseudo))
    @IBAction func fix(_ sender: Any) {
        UserDefaults.standard.set(birthday_list_house, forKey: "birthday_list_key")
        
    }
}
