//
//  HomeScreenView.swift
//  PetShop
//
//  Created by Dirisu on 10/06/2023.
//

import SwiftUI

struct HomeScreenView: View {
    @StateObject var vm = HomeViewModel()
    @State var text = ""

    var body: some View {
        GeometryReader { proxy in
            ZStack(alignment: .bottom) {
                if (vm.activeTab == 0) {
                    HomeTab(vm, proxy: proxy)
                }
                if (vm.activeTab == 1) {
                    FavTab(vm, proxy: proxy)
                }
                if (vm.activeTab == 2) {
                    FavTab(vm, proxy: proxy)
                }
                if (vm.activeTab == 3) {
                    FavTab(vm, proxy: proxy)
                }
                BottomBarView(activeIndex: vm.activeTab) { index in
                    withAnimation(.easeIn(duration: 0.5)) {
                        vm.activeTab = index
                    }
                }
            }
            .edgesIgnoringSafeArea(.bottom)
            .frame(width: proxy.globalWidth, height: proxy.globalHeight)
            
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Text(vm.pageTitle)
                    .font(.manropeExtraBold(24))
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                Image(.shoppingCartIconImage)
            }
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeScreenView()
        }
    }
}
