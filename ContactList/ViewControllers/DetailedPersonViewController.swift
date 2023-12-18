//
//  DetailedPersonViewController.swift
//  ContactList
//
//  Created by Pavel Gribachev on 18.12.2023.
//

import UIKit

class DetailedPersonViewController: UIViewController {
    
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.description
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.largeTitleTextAttributes = 
        [.foregroundColor: UIColor.white]
        phoneNumberLabel.text = person.phoneNumber
        emailLabel.text = person.email

    }
}
