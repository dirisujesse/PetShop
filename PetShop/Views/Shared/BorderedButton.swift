//
//  BorderedButton.swift
//  PetShop
//
//  Created by Dirisu on 10/06/2023.
//

import SwiftUI

struct BorderedButton: View {
    let action: () -> Void
    let text: String
    let textColor: Color
    let borderColor: Color
    let backgroundColor: Color

    init(textColor: Color = .white, borderColor: Color = .white.opacity(0.12), backgroundColor: Color = .white.opacity(0.4), text: String = "Tap", action: @escaping () -> Void) {
        self.action = action
        self.textColor = textColor
        self.borderColor = borderColor
        self.backgroundColor = backgroundColor
        self.text = text
    }

    var body: some View {
        Button(action: action) {
            Text(text)
                .font(.manropeBold(12))
                .frame(minHeight: 36)
                .foregroundColor(textColor)
                .padding(.horizontal)
                .background(
                    backgroundColor
                )
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(borderColor, lineWidth: 4)
                }
        }
        .background(
            backgroundColor
        )
        .cornerRadius(10)
    }
}

struct BorderedButton_Previews: PreviewProvider {
    static var previews: some View {
        BorderedButton {}
            .padding()
            .background(.appPink)
    }
}
