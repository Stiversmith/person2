import Foundation
struct Person {
    var firstName: String
    var lastName: String
    var email: String
    var phone: String
}

let firstName = ["Robert", "Mike", "Dave", "Glen", "Stiver"]
let lastName = ["Smith", "Harris", "Jefferson", "Spears", "Ford"]
let emails = ["robert@gmail.com", "mike@gmail.com", "dave@gmail.com", "glen@gmail.com", "stiver@gmail.com"]
let phones = ["202-223-21-21", "202-223-21-22", "202-223-21-23", "202-223-21-24", "202-223-21-25"]

func randomPerson() -> Person {
    let randomFirstName = firstName.randomElement() ?? ""
    let randomLastName = lastName.randomElement() ?? ""
    let randomEmail = emails.randomElement() ?? ""
    let randomPhone = phones.randomElement() ?? ""
    return Person(firstName: randomFirstName, lastName: randomLastName, email: randomEmail, phone: randomPhone)
}

