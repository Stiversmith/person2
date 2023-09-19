
import UIKit

class ProfileListCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    func configure(with person: Person) {
        nameLabel.text = person.firstName
        lastNameLabel.text = person.lastName
        emailLabel.text = person.email
        phoneLabel.text = person.phone
    }
}


