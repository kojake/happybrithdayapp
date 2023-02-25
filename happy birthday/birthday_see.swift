import UIKit

class customCell: UITableViewCell {    
    @IBOutlet weak var photoimageview: UIImageView!

    //photoimageviewの画像をbirthday_see.swiftに渡す
    var photoimage: UIImage? {
        didSet {
            photoimageview.image = photoimage
        }
    }

     
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
