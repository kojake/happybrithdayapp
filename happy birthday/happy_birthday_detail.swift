//
//  happy_birthday_detail.swift
//  happy birthday
//
//  Created by kaito on 2022/12/25.
//

import UIKit

class happy_birthday_detail: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    //サイトのurl
    let url = NSURL(string: "https://www.youtube.com/")
    
    //サイトに飛ぶ
    @IBAction func go_to_official_website(_ sender: Any) {
            UIApplication.shared.open(url! as URL, options: [:], completionHandler: nil)
    }
}
