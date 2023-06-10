//
//  HomeViewModel.swift
//  PetShop
//
//  Created by Dirisu on 10/06/2023.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var vets = [Vetinarian]()
    
    init() {
        
    }
}


private extension Vetinarian {
    static var mockVets: [Vetinarian] {
        [
            Vetinarian(name: "Dr. Stone", services: [.vacination, .surgery], distance: "10km", image: .doctorStoneImage, specialisation: <#T##AnimalSpecialisation#>)
        ]
    }
}
