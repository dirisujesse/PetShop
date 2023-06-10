//
//  HomeVetCard.swift
//  PetShop
//
//  Created by Dirisu on 10/06/2023.
//

import SwiftUI

struct HomeVetCard: View {
    let vet: Vetinarian
    
    var services: String {
        vet.services.map { $0.name }.joined(separator: ", ")
    }
    
    var body: some View {
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
                Text("Service: \(services)")
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

struct HomeVetCard_Previews: PreviewProvider {
    static var previews: some View {
        HomeVetCard(vet: HomeViewModel.mockVets.last!)
    }
}
