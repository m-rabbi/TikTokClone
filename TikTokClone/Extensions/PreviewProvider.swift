//
//  PreviewProvider.swift
//  TikTokClone
//
//  Created by Md Rabbi on 7/18/25.
//

import Foundation

struct DeveloperPreview {
    static var user = User(
            id: UUID().uuidString,
            username: "lewis_hamilton",
            email: "lewis@gmail.com",
            fullname: "Lewis Hamilton"
        )
        
        static var users = [
            User(id: UUID().uuidString, username: "max_verstappen", email: "max@gmail.com", fullname: "Max Verstappen"),
            User(id: UUID().uuidString, username: "charles_leclerc", email: "charles@gmail.com", fullname: "Charles Leclerc"),
            User(id: UUID().uuidString, username: "carlos_sainz", email: "carlos@gmail.com", fullname: "Carlos Sainz"),
            User(id: UUID().uuidString, username: "lando_norris", email: "lando@gmail.com", fullname: "Lando Norris"),
            User(id: UUID().uuidString, username: "george_russell", email: "george@gmail.com", fullname: "George Russell"),
            User(id: UUID().uuidString, username: "sergio_perez", email: "sergio@gmail.com", fullname: "Sergio Pérez"),
            User(id: UUID().uuidString, username: "oscar_piastri", email: "oscar@gmail.com", fullname: "Oscar Piastri"),
            User(id: UUID().uuidString, username: "fernando_alonso", email: "fernando@gmail.com", fullname: "Fernando Alonso"),
            User(id: UUID().uuidString, username: "valtteri_bottas", email: "valtteri@gmail.com", fullname: "Valtteri Bottas"),
            User(id: UUID().uuidString, username: "yuki_tsunoda", email: "yuki@gmail.com", fullname: "Yuki Tsunoda")
        ]

}
