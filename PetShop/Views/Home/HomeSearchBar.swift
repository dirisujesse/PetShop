//
//  HomeSearchBar.swift
//  PetShop
//
//  Created by Dirisu on 10/06/2023.
//

import SwiftUI

struct HomeSearchBar: View {
    @ObservedObject var vm: HomeViewModel
    @State var text = ""
    
    var body: some View {
        HStack {
            Image(.searchIconImage)
                .onTapGesture {
                    vm.searchVets(text)
                }
            TextField("Find best vaccinate, treatment...", text: $text) {
                vm.searchVets(text)
            }
            .font(.manropeBold(12))
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 14)
                .fill(.appGreyBg)
        )
        .frame(maxWidth: .infinity)
    }
}

struct HomeSearchBar_Previews: PreviewProvider {
    static var previews: some View {
        HomeSearchBar(vm: HomeViewModel())
    }
}
