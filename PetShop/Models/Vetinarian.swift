//
//  Vetinarian.swift
//  PetShop
//
//  Created by Dirisu on 10/06/2023.
//

import Foundation

enum AnimalSpecialisation {
    case all
    case dogs
    case cats
}

enum AnimalService: CaseIterable {
    case vacination
    case surgery
    case spa
    case consultation

    var name: String {
        switch self {
        case .vacination:
            return "Vaccine"
        case .surgery:
            return "Surgery"
        case .spa:
            return "SPA & Treatment"
        case .consultation:
            return "Consultation"
        }
    }
}

struct Vetinarian {
    let name: String
    let services: [AnimalService]
    let distance: String
    let image: String
    let specialisation: AnimalSpecialisation
}
