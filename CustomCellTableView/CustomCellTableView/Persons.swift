//
//  Persons.swift
//  CustomCellTableView
//
//  Created by Macbook Air on 6.02.2022.
//

import Foundation

class Persons {
    var personId:Int?
    var personName:String?
    var personPhone:String?
    
    init() {
        
    }
    
    init(personId:Int,personName:String,personPhone:String) {
        self.personId = personId
        self.personName = personName
        self.personPhone = personPhone
    }
}


