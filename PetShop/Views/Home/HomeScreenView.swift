//
//  HomeScreenView.swift
//  PetShop
//
//  Created by Dirisu on 10/06/2023.
//

import SwiftUI

struct HomeScreenView: View {
    @State var activeTab = 0;
    
    var body: some View {
        GeometryReader { proxy in
            VStack() {
                ScrollView {
                    LazyVStack {
                        
                    }
                }
                .frame(
                    width: proxy.globalWidth,
                    height: .infinity
                )
                BottomBarView(activeIndex: $activeTab)
            }
            .edgesIgnoringSafeArea(.bottom)
            .frame(width: proxy.globalWidth, height: proxy.globalHeight)
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
