//
//  ViewController.swift
//  ContactList
//
//  Created by Pavel Gribachev on 17.12.2023.
//

import UIKit

class ContactsListViewController: UITableViewController {
    
    var persons = Person.getUser()

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        let detailedPersonVC = segue.destination as? DetailedPersonViewController
        
        detailedPersonVC?.person = persons[indexPath.row]
    }

}

// MARK: ContactsListViewControllerDataSource
extension ContactsListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        let person = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.description
        cell.contentConfiguration = content
        return cell
    }
}
