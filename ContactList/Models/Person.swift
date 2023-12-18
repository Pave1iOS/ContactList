//
//  Models.swift
//  ContactList
//
//  Created by Pavel Gribachev on 17.12.2023.
//

import Foundation

struct Person {
    let name: String
    let lastName: String
    let phoneNumber: String
    let email: String
    
    var description: String {
        "\(name) \(lastName)"
    }
    
    static func getUser() -> [Person] {
        var contacts: [Person] = []
        let dataStore = DataStore.shared
        
        let names = dataStore.names.shuffled()
        let lastNames = dataStore.lastNames.shuffled()
        let emails = dataStore.emails.shuffled()
        let phoneNumbers = dataStore.phoneNumbers.shuffled()

        let iterationCount = min(
            names.count,
            lastNames.count,
            emails.count,
            phoneNumbers.count
        )
        
        for index in 0..<iterationCount {
            
            let person = Person(
                    name: names[index],
                    lastName: lastNames[index],
                    phoneNumber: phoneNumbers[index],
                    email: emails[index]
                )
            
            contacts.append(person)
        }
        return contacts
    }
}







