//
//  Model.swift
//  ApiRest
//
//  Created by Turma02-5 on 30/08/24.
//

import Foundation

struct user: Codable, Identifiable{
    let id: Int?
    let name: String
    let username: String?
    let email: String?
    let adress: Adress?
    let phone: String?
    let website: String?
    let company: Company?
}

struct Adress: Codable{
    let street: String
    let suite: String
    let city: String
    let zipcode: String
    let geo: Geo?
}

struct Geo: Codable{
    let lat:String
    let lng: String
}

struct Company: Codable{
    let name:String
    let catchPhrase: String
    let bs: String
}
