//
//  HomeViewModel.swift
//  PetShop
//
//  Created by Dirisu on 10/06/2023.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var activeTab = 0 {
        didSet { setTitleForTab() }
    }

    @Published var activeService: AnimalService? = nil
    @Published var vets = [Vetinarian]()
    @Published fileprivate(set) var pageTitle = "Hello, Human!"

    init() {
        vets = HomeViewModel.mockVets
    }

    private func setTitleForTab() {
        withAnimation {
            switch activeTab {
            case 1:
                pageTitle = "Favorites"
            case 2:
                pageTitle = "Messages"
            case 3:
                pageTitle = "Profile"
            default:
                pageTitle = "Hello, Human!"
            }
        }
    }

    var activeTabBinding: Binding<Int> {
        Binding(
            get: { [weak self] in
                self?.activeTab ?? 0
            },
            set: { [weak self] in
                self?.activeTab = $0
            }
        )
    }

    func selectService(_ service: AnimalService?) {
        guard service != activeService && service != nil else {
            withAnimation {
                activeService = nil
                vets = HomeViewModel.mockVets
            }
            return
        }

        withAnimation {
            activeService = service
            vets = HomeViewModel.mockVets.filter { it in
                it.services.contains(service!)
            }
        }
    }

    func searchVets(_ searchText: String) {
        print(searchText)
        guard !searchText.isEmpty else {
            withAnimation {
                vets = HomeViewModel.mockVets
            }

            return
        }

        withAnimation {
            vets = HomeViewModel.mockVets.filter { it in
                let name = it.name.lowercased()
                return name.contains(searchText.lowercased())
            }
        }
    }

    static var mockVets: [Vetinarian] {
        [
            Vetinarian(name: "Dr. Stone", services: [.vaccination, .surgery], distance: "10km", image: .doctorStoneImage, specialisation: .all),
            Vetinarian(name: "Dr. Vanessa", services: [.consultation, .spa], distance: "12km", image: .doctorVanessaImage, specialisation: .all),
            Vetinarian(name: "Dr. Charlotte", services: [.surgery, .spa], distance: "20km", image: .doctorCharlotte, specialisation: .cats),
            Vetinarian(name: "Dr. Maxwell", services: [.surgery, .vaccination], distance: "24km", image: .doctorMaxwellImage, specialisation: .dogs),
            Vetinarian(name: "Dr. Woo", services: [.spa, .consultation], distance: "40km", image: .doctorWooImage, specialisation: .all),
        ]
    }
}
