//
//  happybirhtday_top.swift
//  happy birthday
//
//  Created by kaito on 2022/12/24.
//

import UIKit

class happybirhtday_top: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //日付を取得
        let date = Date()
    }
    @IBOutlet weak var birthday_close_label: UILabel!
    //日付を表示する
    birthday_close_label.text = day
}

