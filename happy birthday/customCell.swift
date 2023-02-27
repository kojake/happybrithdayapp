//
//  customCell.swift
//  happy birthday
//
//  Created by kaito on 2023/02/19.
//

import UIKit

class customCell: UITableViewCell {    
    @IBOutlet weak var photoimageview: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        photo = UserDefaults.standard.object(forKey: "photo_key") as! [String]
        photoimageview.image = photo
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
