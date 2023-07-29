//
//  CharactersModel.swift
//  RickAndMortySwiftUI
//
//  Created by Nico Valentini Mac Adden on 29/07/2023.
//

import Foundation

struct CharactersResponse: Codable {
    var info: CharactersInfoResponse
    var results: [CharacterInformation]
}

struct CharactersInfoResponse: Codable {
    var count: Int
    var pages: Int
    var next: String?
    var prev: String?
}

struct CharacterInformation: Codable, Identifiable, Equatable, Hashable {
    static func == (lhs: CharacterInformation, rhs: CharacterInformation) -> Bool {
        lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(name)
        hasher.combine(status)
        hasher.combine(species)
        hasher.combine(type)
        hasher.combine(gender)
        hasher.combine(origin)
        hasher.combine(location)
        hasher.combine(image)
        hasher.combine(episode)
        hasher.combine(url)
        hasher.combine(created)
    }
    
    var id: Int
    var name: String
    var status: CharacterStatus
    var species: String
    var type: String
    var gender: CharacterGender
    var origin: CharacterLocation
    var location: CharacterLocation
    var image: String
    var episode: [String]
    var url: String
    var created: String
}

struct CharacterLocation: Codable, Hashable {
    var name: String
    var url: String?
    
    // Implement the 'hash(into:)' method
     func hash(into hasher: inout Hasher) {
         hasher.combine(name)
         hasher.combine(url)
     }
     
     // Implement the '==' operator for comparison
     static func == (lhs: CharacterLocation, rhs: CharacterLocation) -> Bool {
         return lhs.name == rhs.name
     }
}

enum CharacterStatus: String, Codable {
    case dead = "Dead"
    case alive = "Alive"
    case unknown = "unknown"
}

enum CharacterGender: String, Codable {
    case female = "Female"
    case male = "Male"
    case unknown = "unknown"
    case genderless = "Genderless"
}


