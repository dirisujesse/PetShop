//
//  FontStyles.swift
//  PetShop
//
//  Created by Dirisu on 09/06/2023.
//

import SwiftUI

struct AppFonts {
    private init() {}
    
    static let boldFont = "Inter-Bold"
    static let semiBoldFont = "Inter-SemiBold"
    static let mediumFont = "Inter-Medium"
    static let regularFont = "Inter-Regular"
}

struct BoldFontStyle: ViewModifier {
    let size: CGFloat
    let color: Color
    
    func body(content: Content) -> some View {
        content
            .font(.custom(AppFonts.boldFont, size: size))
            .foregroundColor(color)
    }
}

struct SemiBoldFontStyle: ViewModifier {
    let size: CGFloat
    let color: Color
    
    func body(content: Content) -> some View {
        content
            .font(.custom(AppFonts.semiBoldFont, size: size))
            .foregroundColor(color)
    }
}

struct MediumFontStyle: ViewModifier {
    let size: CGFloat
    let color: Color
    
    func body(content: Content) -> some View {
        content
            .font(.custom(AppFonts.mediumFont, size: size))
            .foregroundColor(color)
    }
}

struct RegularFontStyle: ViewModifier {
    let size: CGFloat
    let color: Color
    
    func body(content: Content) -> some View {
        content
            .font(.custom(AppFonts.regularFont, size: size))
            .foregroundColor(color)
    }
}


extension View {
    func regularFont(size: CGFloat, color: Color = .text) -> some View {
        self.modifier(RegularFontStyle(size: size, color: color))
    }
    
    func semiBoldFont(size: CGFloat, color: Color = .text) -> some View {
        self.modifier(SemiBoldFontStyle(size: size, color: color))
    }
    
    func mediumFont(size: CGFloat, color: Color = .text) -> some View {
        self.modifier(MediumFontStyle(size: size, color: color))
    }
    
    func boldFont(size: CGFloat, color: Color = .text) -> some View {
        self.modifier(BoldFontStyle(size: size, color: color))
    }
}

