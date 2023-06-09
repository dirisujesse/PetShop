//
//  ContentView.swift
//  PetShop
//
//  Created by Dirisu on 09/06/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.appPurple
                .edgesIgnoringSafeArea(.all)
            GeometryReader { proxy in
                VStack {
                    HStack {
                        Image(.stethoscpeImage)
                        Text("healthypet")
                            .font(.manropeRegular(18))
                            .foregroundColor(.white)
                    }
                    Text("Helping you to keep **your bestie** stay healthy!")
                        .multilineTextAlignment(.center)
                        .font(.manropeRegular(24))
                        .foregroundColor(.white)
                    Image(.bernerImage)
                        .resizable()
                        .frame(width: proxy.size.width)
                        .edgesIgnoringSafeArea(.bottom)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
