//
//  BottomBarItemView.swift
//  PetShop
//
//  Created by Dirisu on 10/06/2023.
//

import SwiftUI

struct BottomBarItemView: View {
    var activeIndex: Int
    let index: Int
    let icon: String
    var onTabSelection: (Int) -> Void

    init(activeIndex: Int, index: Int, icon: String, onTabSelection: @escaping (Int) -> Void) {
        self.activeIndex = activeIndex
        self.index = index
        self.icon = icon
        self.onTabSelection = onTabSelection
    }

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
            onTabSelection(index)
        }
    }
}

struct BottomBarItemView_Previews: PreviewProvider {
    static var previews: some View {
        BottomBarItemView(activeIndex: 0, index: 0, icon: .homeIconImage) { _ in }
    }
}
