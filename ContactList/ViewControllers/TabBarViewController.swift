//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Pavel Gribachev on 18.12.2023.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpViewControllers()
        
    }
    
    private func setUpViewControllers() {
        guard let contactsVC = viewControllers?.first as? ContactsListViewController else { return }
        guard let sectionVC = viewControllers?.last as? SectionViewController else { return }
        
        let persons = Person.getUser()
        
        contactsVC.persons = persons
        sectionVC.persons = persons
    }
}
