//
//  PetShopApp.swift
//  PetShop
//
//  Created by Dirisu on 09/06/2023.
//

import SwiftUI

@main
struct PetShopApp: App {
    @StateObject var navigationVM = NavigationViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(.light)
                .environmentObject(navigationVM)
        }
    }
}
