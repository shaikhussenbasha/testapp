//
//  places.swift
//  testapp
//
//  Created by Shaikhussen Basha on 08/02/22.
//
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Welcome
struct Welcome: Codable {
    let properties: [Property]
}

// MARK: - Property
struct Property: Codable {
    let id: Int
    let name: String
    let mainImage: String
    let place, location: String

    enum CodingKeys: String, CodingKey {
        case id, name
        case mainImage = "main_image"
        case place, location
    }
}
