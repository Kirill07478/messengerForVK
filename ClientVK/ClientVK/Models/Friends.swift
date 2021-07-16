//
//  Friends.swift
//  ClientVK
//
//  Created by Kiryusha Orlov on 04.07.2021.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let friends = try? newJSONDecoder().decode(Friends.self, from: jsonData)

import Foundation
import RealmSwift

// MARK: - Friends
class Friends: Codable {
    let response: Response

    init(response: Response) {
        self.response = response
    }
}

// MARK: - Response
class Response: Codable {
    let count: Int
    let items: [User]

    init(count: Int, items: [User]) {
        self.count = count
        self.items = items
    }
}

// MARK: - Item
class User: Object, Codable {
    @objc dynamic var id: Int
    @objc dynamic var lastName, trackCode, firstName: String?
    @objc dynamic var photo100: String?
    @objc dynamic var deactivated: String?
    

    enum CodingKeys: String, CodingKey {
        case id
        case lastName = "last_name"
        case trackCode = "track_code"
        case firstName = "first_name"
        case photo100 = "photo_100"
        case deactivated
    }

//    init(id: Int, lastName: String, trackCode: String, firstName: String, photo100: String, deactivated: String?) {
//        self.id = id
//        self.lastName = lastName
//        self.trackCode = trackCode
//        self.firstName = firstName
//        self.photo100 = photo100
//        self.deactivated = deactivated
//
//    }
    
    func fullName() -> String {
        guard let last = lastName, let first = firstName else {return "fail"}
        return last + " " + first
    }
    
    
}
