//
//  RMCharacter.swift
//  Rick and Morty
//
//  Created by RANGA REDDY NUKALA on 27/02/21.
//

import Foundation

struct RMCharacter: Codable {
    let id: Int
    let name: String
    let status: String
    let species: String
    let gender: String
    
    struct Origin: Codable {
        let name: String
    }
    let origin: Origin
    
    struct Location: Codable {
        let name: String
    }
    let location: Location
    let image: String
    let created: String
}
