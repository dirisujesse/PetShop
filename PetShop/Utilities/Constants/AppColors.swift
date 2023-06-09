//
//  AppColors.swift
//  PetShop
//
//  Created by Dirisu on 09/06/2023.
//

import SwiftUI

struct AppColors {
    private init() {}
    
    static let purple = Color("orange")
    static let lightPurple = Color("burntorange")
    static let pink = Color("Pink")
    static let magenta = Color("Magenta")
    static let teal = Color("Teal")
    static let green = Color("Green")
    static let text = Color("Text")
    static let secondaryText = Color("SecondaryText")
    static let disabledText = Color("DisabledText")
    static let transparent = Color("transparent")
}

extension ShapeStyle where Self == Color {
    static var appPurple: Color {
        AppColors.purple
    }
    static var appLightPurple: Color {
        AppColors.lightPurple
    }
    static var text: Color {
        AppColors.text
    }
    static var appSecondaryText: Color {
        AppColors.secondaryText
    }
    static var appDisabledText: Color {
        AppColors.disabledText
    }
    static var appGreen: Color {
        AppColors.green
    }
    static var appPink: Color {
        AppColors.pink
    }
    static var appMagenta: Color {
        AppColors.magenta
    }
    static var appTeal: Color {
        AppColors.teal
    }
    static var transparent: Color {
        AppColors.transparent
    }
}

