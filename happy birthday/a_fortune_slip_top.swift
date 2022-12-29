//
//  a_fortune_slip_top.swift
//  happy birthday
//
//  Created by kaito on 2022/12/29.
//

import UIKit

class a_fortune_slip_top: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    let choose_an_omikuji = a_fortune_slip_list.randomElement()

    @IBAction func draw_a_fortune(_ sender: Any) {
        a_fortune_slip = choose_an_omikuji!
    }
}
