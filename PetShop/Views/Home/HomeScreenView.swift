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
            VStack {
                ScrollView {
                    VStack {
                        AppointmentCardView()
                            .padding(.bottom, 20)
                            .padding(.horizontal)
                        HomeSearchBar(vm: vm)
                            .padding(.horizontal)
                        ServiceSelectionRow(vm: vm)
                        .padding(.vertical, 20)
                        ForEach(vm.vets) { vet in
                            HStack {
                                Image(vet.image)
                                    .resizable()
                                    .frame(width: 88, height: 103)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                    .padding()
                                
                                VStack(alignment: .leading, spacing: 7) {
                                    Text(vet.name)
                                        .font(.manropeBold())
                                        .foregroundColor(.text)
                                    Text("Service: Vaccine, Surgery")
                                        .font(.manropeRegular(12))
                                    HStack() {
                                        Image(.loactionPinImage)
                                            .resizable()
                                            .frame(width: 14, height: 14)
                                            .foregroundColor(.appSecondaryText)
                                        Text(vet.distance)
                                            .font(.manropeRegular(12))
                                            .foregroundColor(.appSecondaryText)
                                    }
                                HStack() {
                                        Text("Available for")
                                            .font(.manropeBold(12))
                                            .foregroundColor(.appGreen)
                                        Spacer()
                                        ForEach(vet.specialisation.icons, id: \.self) { icon in
                                            Image(icon)
                                                .resizable()
                                                .frame(width: 8.74, height: 10)
                                        }
                                    }
                                }
                                .padding(.trailing)
                            }
                            .frame(maxWidth: .infinity)
                            .background(.white)
                            .clipShape(
                                RoundedRectangle(cornerRadius: 14)
                            )
                            .shadow(color: .text.opacity(0.12), radius: 30, x: 0, y: 2)
                            .padding(.horizontal)
                            .padding(.bottom, 11)
                        }
                    }
                    .padding(.top, proxy.globalHeightFraction(2))
                }
                .scrollDismissesKeyboard(.immediately)
                .frame(
                    width: proxy.globalWidth,
                    height: .infinity
                )
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
