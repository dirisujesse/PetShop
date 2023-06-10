//
//  HomeScreenView.swift
//  PetShop
//
//  Created by Dirisu on 10/06/2023.
//

import SwiftUI

struct HomeScreenView: View {
    @State var activeTab = 0;
    @State var text = ""
    
    var body: some View {
        GeometryReader { proxy in
            VStack() {
                ScrollView {
                    VStack {
                        AppointmentCardView()
                            .padding(.bottom, 21)
                        HStack {
                            Image(.searchIconImage)
                            TextField("Find best vaccinate, treatment...", text: $text)
                                .font(.manropeBold(12))
                        }
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 14)
                                .fill(.appGreyBg)
                        )
                        .frame(maxWidth: .infinity)
                        .padding(.bottom, 20)
                    }
                    .padding(.horizontal)
                    .padding(.top, proxy.globalHeightFraction(2))
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
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Text("Hello, Human!")
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
