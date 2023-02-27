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

        images = UserDefaults.standard.object(forKey: "photo_image_key") as! [String]
        print(images)
//        photoimageview.image = String[photo]
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
