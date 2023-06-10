//
//  HomeViewModel.swift
//  PetShop
//
//  Created by Dirisu on 10/06/2023.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var activeTab = 0;
    @Published var activeService: AnimalService? = nil;
    @Published var vets = [Vetinarian]()

    init() {
        self.vets = mockVets
    }
    
    func selectService(_ service: AnimalService?) {
        if (service == activeService) {
            withAnimation {
                activeService = nil
            }
            return
        }
        
        withAnimation {
            activeService = service
        }
        
        guard let service = service else {
            vets = mockVets
            return;
        }
        
        vets = mockVets.filter { it in
            it.services.contains(service)
        }
    }
    
    func searchVets(_ searchText: String) {
        if (searchText.isEmpty) {
            vets = mockVets
            return;
        }
        vets = mockVets.filter { it in
            it.name.lowercased().contains(searchText)
        }
    }
    
    
    
    private var mockVets: [Vetinarian] {
        [
            Vetinarian(name: "Dr. Stone", services: [.vacination, .surgery], distance: "10km", image: .doctorStoneImage, specialisation: .all),
            Vetinarian(name: "Dr. Vanessa", services: [.vacination, .spa], distance: "12km", image: .doctorVanessaImage, specialisation: .all),
            Vetinarian(name: "Dr. Charlotte", services: [.consultation, .vacination], distance: "20km", image: .doctorCharlotte, specialisation: .cats),
            Vetinarian(name: "Dr. Maxwell", services: [.surgery, .consultation], distance: "24km", image: .doctorMaxwellImage, specialisation: .dogs),
            Vetinarian(name: "Dr. Woo", services: [.spa, .vacination], distance: "40km", image: .doctorWooImage, specialisation: .all),
        ]
    }
}
