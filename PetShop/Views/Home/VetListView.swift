//
//  VetListView.swift
//  PetShop
//
//  Created by Dirisu on 10/06/2023.
//

import SwiftUI

struct VetListView: View {
    let vets: [Vetinarian]
    
    var body: some View {
        LazyVStack() {
            ForEach(vets) { vet in
                HomeVetCard(vet: vet)
            }
            .background(.transparent)
        }
    }
}

struct VetListView_Previews: PreviewProvider {
    static var previews: some View {
        VetListView(vets: HomeViewModel.mockVets)
    }
}
