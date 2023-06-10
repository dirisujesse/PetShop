//
//  WelcomeScreenView.swift
//  PetShop
//
//  Created by Dirisu on 10/06/2023.
//

import SwiftUI

struct WelcomeScreenView: View {
    @EnvironmentObject var navigationVM: NavigationViewModel
    
    var formattedText: AttributedString {
        var richText = AttributedString();

        var leadText = AttributedString("Helping you to keep ")
        leadText.font = .manropeRegular(24)
        leadText.foregroundColor = .appTextPurple

        richText += leadText

        var boldText = AttributedString("your bestie")
        boldText.font = .manropeExtraBold(24)
        boldText.foregroundColor = .white

        richText += boldText


        var trailingText = AttributedString(" staying healthy!")
        trailingText.font = .manropeRegular(24)
        trailingText.foregroundColor = .appTextPurple

        richText += trailingText

        return richText
    }

    var body: some View {
        GeometryReader { proxy in
            ZStack(alignment: .top) {
                HStack {
                    Image(.stethoscpeImage)
                    Text("healthypet")
                        .font(.manropeRegular(18))
                        .foregroundColor(.white)
                }
                Text(formattedText)
                    .multilineTextAlignment(.center)
                    .padding(.top, proxy.size.height * 0.15)
                    .padding(.horizontal, proxy.size.width * 0.2)
                    .lineSpacing(10)
                Image(.bernerImage)
                    .resizable()
                    .frame(width: proxy.size.width)
                    .edgesIgnoringSafeArea(.bottom)
                    .onTapGesture {
                        navigationVM.push(.home)
                    }
            }
        }
        .purpleBackground()
//        .task {
//            Task {
//                try? await Task.sleep(for: .seconds(4))
//                navigationVM.push(.home)
//            }
//        }
    }
}

struct WelcomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreenView()
            .environmentObject(NavigationViewModel())
    }
}
