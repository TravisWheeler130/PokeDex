//
//  PokeDex.swift
//  PokeDex
//
//  Created by Travis Wheeler on 10/1/19.
//  Copyright © 2019 Travis Wheeler. All rights reserved.
//

import Foundation

struct TopLevelDict: Decodable {
    // remember CodingKeys vs CodingKey
    private enum CodingKeys: String, CodingKey {
        case abilities
        case name
        case id
        case spriteDictionary = "sprites"
        
    }
    
    let name: String
    let id: Int
    let abilities: [AbilityDictionary]
    let spriteDictionary: SpriteDictionary
}

struct AbilityDictionary: Decodable {
    let ability: Ability
    
    struct Ability: Decodable {
        let name: String
    }
}

struct SpriteDictionary: Decodable {
    private enum CodingKeys: String, CodingKey {
        case image = "front_shiny"
    }
    let image: URL
}
