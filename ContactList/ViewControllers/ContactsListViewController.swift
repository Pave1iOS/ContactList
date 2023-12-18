//
//  ViewController.swift
//  ContactList
//
//  Created by Pavel Gribachev on 17.12.2023.
//

import UIKit

class ContactsListViewController: UITableViewController {
    
    private var persons = Person.getUser()

    override func viewDidLoad() {
        super.viewDidLoad()

        

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
