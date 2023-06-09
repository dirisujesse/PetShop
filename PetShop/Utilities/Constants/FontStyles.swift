//
//  FontStyles.swift
//  PetShop
//
//  Created by Dirisu on 09/06/2023.
//

import SwiftUI

struct AppFonts {
    private init() {}

    static let extraBold = "Manrope-ExtraBold"
    static let bold = "Manrope-Bold"
    static let semiBold = "Manrope-SemiBold"
    static let medium = "Manrope-Medium"
    static let regular = "Manrope-Regular"
}

private protocol AppFontStyle {
    var size: CGFloat { get }

    func getStyle() -> Font
}

private struct ExtraBoldFontStyle: AppFontStyle {
    let size: CGFloat

    func getStyle() -> Font {
        .custom(AppFonts.extraBold, size: size)
    }
}

extension Font {
    static func manropeRegular(_ size: CGFloat = 12) -> Font {
        .custom(AppFonts.regular, size: size)
    }

    static func manropeMedium(_ size: CGFloat = 12) -> Font {
        .custom(AppFonts.medium, size: size)
    }

    static func manropeSemiBold(_ size: CGFloat = 12) -> Font {
        .custom(AppFonts.semiBold, size: size)
    }

    static func manropeBold(_ size: CGFloat = 12) -> Font {
        .custom(AppFonts.bold, size: size)
    }

    static func manropeExtraBold(_ size: CGFloat = 12) -> Font {
        .custom(AppFonts.extraBold, size: size)
    }
}
