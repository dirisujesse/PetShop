//
//  AppointMentCard.swift
//  PetShop
//
//  Created by Dirisu on 10/06/2023.
//

import SwiftUI

struct AppointmentCardView: View {
    var formattedText: AttributedString {
        var richText = AttributedString();

        var leadText = AttributedString("Your ")
        leadText.font = .manropeRegular()
        leadText.foregroundColor = .white

        richText += leadText

        var boldText = AttributedString("Catrine")
        boldText.font = .manropeExtraBold()
        boldText.foregroundColor = .white

        richText += boldText


        var trailingText = AttributedString(" will get vaccination ")
        trailingText.font = .manropeRegular()
        trailingText.foregroundColor = .white

        richText += trailingText
        
        var terminalBoldText = AttributedString("tomorrow at 07.00 am!")
        terminalBoldText.font = .manropeExtraBold()
        terminalBoldText.foregroundColor = .white

        richText += terminalBoldText

        return richText
    }
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(formattedText)
                    .font(.manropeRegular())
                    .foregroundColor(.white)
                    .padding(.bottom, 20)
                    .padding(.top, 10)

                BorderedButton(text: "See details") {
                }
            }
            .padding(.horizontal)
            Image(.kittyImage)
                .resizable()
        }
        .frame(maxWidth: .infinity)
        .cardBackground()
        .clipShape(RoundedRectangle(cornerRadius: 14))
    }
}

struct AppointmentCardView_Previews: PreviewProvider {
    static var previews: some View {
        AppointmentCardView()
            .frame(maxHeight: 200)
            .padding(.horizontal)
    }
}
