//
//  FavTab.swift
//  PetShop
//
//  Created by Dirisu on 10/06/2023.
//

import SwiftUI

struct FavTab: View {
    @ObservedObject var vm: HomeViewModel;
    let proxy: GeometryProxy;
    
    init(_ vm: HomeViewModel, proxy: GeometryProxy) {
        self.vm = vm
        self.proxy = proxy
    }
    
    var body: some View {
        ScrollView {
            VetListView(vets: vm.vets)
                .padding(.top, proxy.globalHeightFraction(2))
                .padding(.bottom, proxy.globalHeightFraction(14))
        }
        .scrollDismissesKeyboard(.immediately)
    }
}

struct FavTab_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { proxy in
            FavTab(HomeViewModel(), proxy: proxy)
        }
    }
}
