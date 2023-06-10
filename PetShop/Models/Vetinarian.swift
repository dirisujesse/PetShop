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
    
    var icons: [String] {
        let icons: [String] = [.catIconImage, .dogIconImage]
        switch self {
        case .all:
            return icons
        case .dogs:
            return [icons.last!]
        case .cats:
            return [icons.first!]
        }
    }
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

struct Vetinarian: Identifiable {
    var id: UUID = UUID()
    let name: String
    let services: [AnimalService]
    let distance: String
    let image: String
    let specialisation: AnimalSpecialisation
}
