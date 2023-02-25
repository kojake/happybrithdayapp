//
//  customCell.swift
//  happy birthday
//
//  Created by kaito on 2023/02/19.
//

import UIKit

class customCell: UITableViewCell {    
    @IBOutlet weak var photoimageview: UIImageView!
    
//    var photoimage: UIImage? {
//        didSet{
//            photoimageview.image = photoimage
//        }
//    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        birthday_list = UserDefaults.standard.object(forKey: "birthday_list_key") as! [String]
        photoimageview.image = (UIImage(named: "photoPath"))
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
