//
//  birthday_increase_confirmation.swift
//  happy birthday
//
//  Created by kaito on 2022/12/11.
//

import UIKit

class birthday_increase_confirmation: UIViewController {
    
    //名前と誕生日の確認label
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        //pseudoからgetしlabelに反映する
        birthdayLabel.text = "\(month_pseudo)月\(day_pseudo)日"
        nameLabel.text = name_pseudo
    }
    
    //決定ボタンが押されたら
    @IBAction func fix(_ sender: Any) {
        let birthdayListHouse = "\(name_pseudo)：\(month_pseudo)/\(day_pseudo)"
        
        if var birthdayList = UserDefaults.standard.array(forKey: "birthday_list_key") as? [String] {
            birthdayList.append(birthdayListHouse)
            UserDefaults.standard.set(birthdayList, forKey: "birthday_list_key")
        } else {
            UserDefaults.standard.set([birthdayListHouse], forKey: "birthday_list_key")
        }
    }
}
