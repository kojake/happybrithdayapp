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
        birthday_label.text = String(day_pseudo) + "月" + String(month_pseudo) + "日"
        name_label.text = name_pseudo
    }
    
    //決定ボタンが押されたら

    @IBAction func fix(_ sender: Any) {
        var list = []
        list.append(String(name_pseudo) + "：" + month_pseudo + "/" + day_pseudo)
    }
}
