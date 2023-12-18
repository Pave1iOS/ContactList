//
//  DetailedPersonViewController.swift
//  ContactList
//
//  Created by Pavel Gribachev on 18.12.2023.
//

import UIKit

final class DetailedPersonViewController: UIViewController {
    
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.tintColor = .darkGray
        title = person.description
        phoneNumberLabel.text = "phone: \(person.phoneNumber)"
        emailLabel.text = "email: \(person.email)"

    }
}
