//
//  Users.swift
//  CheckInTabBarController
//
//  Created by ВОНЮЧКА on 30.11.2020.
//

struct User {
    let name: String
    let password: String
    
    init(name: String = "name", password: String = "password") {
        self.name = name
        self.password = password
    }
}

let user = User(name: "nikita", password: "nikita")


