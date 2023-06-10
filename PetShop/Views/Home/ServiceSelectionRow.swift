//
//  ServiceSelectionRow.swift
//  PetShop
//
//  Created by Dirisu on 10/06/2023.
//

import SwiftUI

struct ServiceSelectionRow: View {
    @ObservedObject var vm: HomeViewModel
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(spacing: 10) {
                ForEach(AnimalService.allCases, id: \.self) { service in
                    ServiceSelectionIndicator(service, vm.activeService) {
                        vm.selectService(service)
                    }
                }
            }
            .padding(.horizontal)
            
        }
        .scrollIndicators(.hidden)
    }
}

struct ServiceSelectionRow_Previews: PreviewProvider {
    static var previews: some View {
        ServiceSelectionRow(vm: HomeViewModel())
    }
}
