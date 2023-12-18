//
//  DataStore.swift
//  ContactList
//
//  Created by Pavel Gribachev on 17.12.2023.
//

import Foundation

class DataStore {
    
    static let shared = DataStore()
    
    let names = [
        "Peter",
        "Anna",
        "Pavel",
        "Evgenia",
        "Pantiac",
        "Rudolf",
        "Gerbert",
        "Maks",
        "Vasiliy",
        "Sergey"
    ]
    
    let lastNames = [
        "Gladishev",
        "Gribachev",
        "Astahov",
        "Nebroev",
        "Sidorov",
        "Petrov",
        "Ivanov",
        "Tropman",
        "Kislov",
        "Morozov"
    ]
    
    let phoneNumbers = [
        "7-495",
        "11-01",
        "112",
        "32-14-57",
        "8-00-09",
        "999-00-90",
        "123-456",
        "5-45-45",
        "212-32-10",
        "4-12-04"
    ]
    
    let emails = [
        "abs@aia",
        "111@mail",
        "09@asdf",
        "minfin@bk.ru",
        "qwe@asd",
        "cila@voli",
        "mrak@mira",
        "virus@bk.net",
        "moimir@bk",
        "achko@mail.ru"
    ]
    
    private init() {}
}
