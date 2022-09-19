//
//  RickAndMorty.swift
//  RickandMortyFinalAPP
//
//  Created by Pavel Lazarev Macbook on 19.09.2022.
//

import Foundation

struct RickAndMorty: Decodable {
    let name: String
    let species: String
    let gender: String
    let image: String
    let episode: [String]
    let url: String
    var location: Location
}

struct Location: Decodable {
    let name: String
    let url: String?
}
