
import UIKit

class PersonListVC: UITableViewController {
    
    var people: [Person] = []
    var sectionTitles: [String] = []
    var firstName: [String] = []
    var lastName: [String] = []
    var emails: [String] = []
    var phones: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstName = ["Robert", "Mike", "Dave", "Glen", "Stiver"]
        lastName = ["Smith", "Harris", "Jefferson", "Spears", "Ford"]
        emails = ["robert@gmail.com", "mike@gmail.com", "dave@gmail.com", "glen@gmail.com", "stiver@gmail.com"]
        phones = ["202-223-21-21", "202-223-21-22", "202-223-21-23", "202-223-21-24", "202-223-21-25"]
        
        for _ in 1...5 {
            let person = randomPerson()
            people.append(person)
        }
        
        sectionTitles = Array(Set(people.map
                                  {String($0.lastName.prefix(1))}))
        
        tableView.register(UINib(nibName: "PersonListCell", bundle: nil),
                           forCellReuseIdentifier: "PersonListCellIdentifier")
        tableView.register(UINib(nibName: "HeaderViewCell2", bundle: nil),
                           forHeaderFooterViewReuseIdentifier: "HeaderViewCellIdentifier2")
        tableView.register(UINib(nibName: "ProfileListCell", bundle: nil),
                           forHeaderFooterViewReuseIdentifier: "ProfileListCellIdentifier")
        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return sectionTitles.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let letter = sectionTitles[section]
        return people.filter{$0.lastName.hasPrefix(letter)}.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonListCellIdentifier", for: indexPath)
        let letter = sectionTitles[indexPath.section]
        let peopleInSection = people.filter{$0.lastName.hasPrefix(letter)}
        let person = peopleInSection[indexPath.row]
        cell.textLabel?.text = "\(person.firstName) \(person.lastName)"
    
        return cell
    }
    
//    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "HeaderViewCellIdentifier2")
//        
//        header.titleLabel2.text = sectionTitles[section]
//        
//        return header
//    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 75.0
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
}


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

  
    // MARK: - Navigation

   //  In a storyboard-based application, you will often want to do a little preparation before navigation
   // override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     //   if segue.identifier ==
        // Get the new view controller using segue.destination.
       //  Pass the selected object to the new view controller.
    


