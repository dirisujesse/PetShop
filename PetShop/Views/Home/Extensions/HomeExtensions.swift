//
//  HomeExtensions.swift
//  PetShop
//
//  Created by Dirisu on 10/06/2023.
//

import SwiftUI

struct HomeCardBackgroundModifier: ViewModifier {
    let animate: Bool;
    
    func body(content: Content) -> some View {
        ZStack {
            AppointmentCardBackgroundView(animate: animate)
            content
        }
    }
}

extension View {
    func cardBackground(animate: Bool = true) -> some View {
        modifier(HomeCardBackgroundModifier(animate: animate))
    }
}
