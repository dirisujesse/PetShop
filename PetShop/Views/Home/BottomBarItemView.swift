//
//  BottomBarItemView.swift
//  PetShop
//
//  Created by Dirisu on 10/06/2023.
//

import SwiftUI

struct BottomBarItemView: View {
    @Binding var activeIndex: Int
    let index: Int
    let icon: String

    private var isActive: Bool {
        activeIndex == index
    }

    private var color: Color {
        return isActive ? .appIconPurple : .appIconGrey
    }

    private var barColor: Color {
        return isActive ? .appIconPurple : .transparent
    }

    var body: some View {
        VStack(spacing: 1) {
            Image(icon)
                .renderingMode(.template)
                .foregroundColor(color)
            barColor.frame(width: 12, height: 2)
                .cornerRadius(5)
        }
        .scaleEffect(isActive ? 1.05 : 1)
        .onTapGesture {
            withAnimation(.easeIn(duration: 0.5)) {
                activeIndex = index
            }
        }
    }
}

struct BottomBarItemView_Previews: PreviewProvider {
    static var previews: some View {
        BottomBarItemView(activeIndex: .constant(0), index: 0, icon: .homeIconImage)
    }
}
