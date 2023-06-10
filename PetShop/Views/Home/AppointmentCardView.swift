//
//  AppointMentCard.swift
//  PetShop
//
//  Created by Dirisu on 10/06/2023.
//

import SwiftUI

struct AppointmentCardView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Your Catrine will get vaccination tomorrow at 07.00 am!")
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
