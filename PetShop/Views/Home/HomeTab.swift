//
//  HomeTab.swift
//  PetShop
//
//  Created by Dirisu on 10/06/2023.
//

import SwiftUI

struct HomeTab: View {
    @ObservedObject var vm: HomeViewModel;
    let proxy: GeometryProxy;
    
    init(_ vm: HomeViewModel, proxy: GeometryProxy) {
        self.vm = vm
        self.proxy = proxy
    }
    
    var body: some View {
        ScrollView {
            VStack {
                AppointmentCardView()
                    .padding(.bottom, 20)
                    .padding(.horizontal)
                HomeSearchBar(vm: vm)
                    .padding(.horizontal)
                ServiceSelectionRow(vm: vm)
                    .padding(.vertical, 20)
                VetListView(vets: vm.vets)
                    .padding(.bottom, proxy.globalHeightFraction(2))
            }
            .padding(.top, proxy.globalHeightFraction(2))
            .padding(.bottom, proxy.globalHeightFraction(14))
        }
        .scrollDismissesKeyboard(.immediately)
    }
}

struct HomeTab_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { proxy in
            HomeTab(HomeViewModel(), proxy: proxy)
        }
    }
}
