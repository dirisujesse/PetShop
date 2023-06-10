//
//  ContentView.swift
//  PetShop
//
//  Created by Dirisu on 09/06/2023.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var navigationVM: NavigationViewModel
    
    var body: some View {
        NavigationStack(path: navigationVM.navPathBinding) {
            WelcomeScreenView()
                .navigationDestination(for: NavigationRoute.self, destination: navigationVM.handleRouting)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(NavigationViewModel())
    }
}
