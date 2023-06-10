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
                .padding(.horizontal)
            TextField("Find best vaccinate, treatment...", text: $text)
                .padding(.vertical)
                .padding(.trailing)
                .textInputAutocapitalization(.none)
                .onChange(of: text, perform: vm.searchVets)
                .font(.manropeBold(12))
        }
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
