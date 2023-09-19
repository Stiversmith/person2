
import UIKit

class PersonListCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    func configure(with person: Person) {
        nameLabel.text = person.firstName
        lastNameLabel.text = person.lastName
    }

}
