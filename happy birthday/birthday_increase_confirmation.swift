//
//  birthday_increase_confirmation.swift
//  happy birthday
//
//  Created by kaito on 2022/12/11.
//

import UIKit

class birthday_increase_confirmation: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //pseudoからgetしlabelに反映する
        birthday_label.text = String(day_pseudo) + "月" + String(month_pseudo) + "日"
    }
    
    //名前と誕生日の確認label
    @IBOutlet weak var name_label: UILabel!
    @IBOutlet weak var birthday_label: UILabel!
}
