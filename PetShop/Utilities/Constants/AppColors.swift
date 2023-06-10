//
//  AppColors.swift
//  PetShop
//
//  Created by Dirisu on 09/06/2023.
//

import SwiftUI

struct AppColors {
    private init() {}

    static let purple = Color("Purple")
    static let iconPurple = Color("IconPurple")
    static let iconGrey = Color("IconGrey")
    static let greyBackground = Color("GrayBackground")
    static let lightPurple = Color("LightPurple")
    static let textPurple = Color("TextPurple")
    static let pink = Color("Pink")
    static let magenta = Color("Magenta")
    static let teal = Color("Teal")
    static let green = Color("Green")
    static let text = Color("Text")
    static let secondaryText = Color("SecondaryText")
    static let disabledText = Color("DisabledText")
    static let aquaMarine = Color("AquaMarine")
    static let skyBlue = Color("SkyBlue")
    static let transparent = Color("Transparent")
}

extension ShapeStyle where Self == Color {
    static var appPurple: Color {
        AppColors.purple
    }

    static var appIconPurple: Color {
        AppColors.iconPurple
    }

    static var appIconGrey: Color {
        AppColors.iconGrey
    }
    
    
    static var appGreyBg: Color {
        AppColors.greyBackground
    }

    static var appTextPurple: Color {
        AppColors.textPurple
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

    static var appSkyBlue: Color {
        AppColors.skyBlue
    }

    static var appAquaMarine: Color {
        AppColors.aquaMarine
    }

    static var transparent: Color {
        AppColors.transparent
    }
}
