//
//  omikuji_result.swift
//  happy birthday
//
//  Created by kaito on 2022/12/29.
//

import UIKit

class omikuji_result: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let image_name = ["omikuji_daikichi","omikuji_chuukichi","omikuji_syoukichi","omikuji_kichi","omikuji_suekichi","omikuji_kyou","omikuji_daikyou"]
        
        //結果を表示する
        if a_fortune_slip == 1{
            image_nomber = 1
        }
        else if a_fortune_slip == 2{
            image_nomber = 2
        }
        else if a_fortune_slip == 3{
            image_nomber = 3
        }
        else if a_fortune_slip == 4{
            image_nomber = 4
        }
        else if a_fortune_slip == 5{
            image_nomber = 5
        }
        else if a_fortune_slip == 6{
            image_nomber = 6
        }
        else if a_fortune_slip == 7{
            image_nomber = 7
        }
        let name = image_name[image_nomber]
        omikujiimage.image = UIImage(named: name)
    }
    
    @IBOutlet weak var omikujiimage: UIImageView!
}
