//
//  NavigationViewModel.swift
//  PetShop
//
//  Created by Dirisu on 10/06/2023.
//

import SwiftUI

enum NavigationRoute {
    case welcome
    case home
}

class NavigationViewModel: ObservableObject {
    @Published var navPath = NavigationPath()

    func push(_ path: NavigationRoute) {
        navPath.append(path)
    }

    func pop() {
        navPath.removeLast()
    }

    @ViewBuilder func handleRouting(_ path: NavigationRoute) -> some View {
        switch path {
        case .welcome:
            WelcomeScreenView()
        case .home:
            HomeScreenView()
        }
    }
}
