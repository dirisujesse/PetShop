//
//  AppImages.swift
//  PetShop
//
//  Created by Dirisu on 09/06/2023.
//

import Foundation

struct AppImages {
    private init() {}
    
    static let berner = "berner"
    static let homeIcon = "home"
    static let heartIcon = "heart"
    static let messageIcon = "message"
    static let userIcon = "user"
    static let catIcon = "cat_icon"
    static let dogIcon = "dog_icon"
    static let locationPin = "map_pin"
    static let kitty = "kitty"
    static let searchIcon = "search"
    static let shoppingCartIcon = "shopping_cart"
    static let stethoscope = "stethoscope"
    static let drStone = "stone"
    static let drVanessa = "vanessa"
}

extension String {
    static var bernerImage: String {
        AppImages.berner
    }
    
    static var homeIconImage: String {
        AppImages.homeIcon
    }
    
    
    static var heartIconImage: String {
        AppImages.heartIcon
    }
    
    static var messageIconImage: String {
        AppImages.messageIcon
    }
    
    static var userIconImage: String {
        AppImages.userIcon
    }
    
    static var dogIconImage: String {
        AppImages.dogIcon
    }
    
    static var kittyImage: String {
        AppImages.kitty
    }
    
    static var searchIconImage: String {
        AppImages.searchIcon
    }
    
    static var shoppingCartIconImage: String {
        AppImages.shoppingCartIcon
    }
    
    static var stethoscpeImage: String {
        AppImages.stethoscope
    }
    
    static var doctorStoneImage: String {
        AppImages.drStone
    }
    
    static var doctorVanessaImage: String {
        AppImages.drVanessa
    }
    
    
    static var loactionPinImage: String {
        AppImages.locationPin
    }
}
