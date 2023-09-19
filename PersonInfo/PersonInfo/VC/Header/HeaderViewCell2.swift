
import UIKit

class HeaderViewCell2: UITableViewHeaderFooterView {
    
    @IBOutlet weak var titleLabel2: UILabel!
    func configure(with title: String){
            titleLabel2.text = title
        }
}
