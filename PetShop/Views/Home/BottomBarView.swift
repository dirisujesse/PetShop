//
//  BottomBarView.swift
//  PetShop
//
//  Created by Dirisu on 10/06/2023.
//

import SwiftUI

struct BottomBarView: View {
    var activeIndex: Int
    var onTabSelection: (Int) -> Void

    init(activeIndex: Int, onTabSelection: @escaping (Int) -> Void = { _ in }) {
        self.activeIndex = activeIndex
        self.onTabSelection = onTabSelection
    }

    var body: some View {
        HStack {
            BottomBarItemView(activeIndex: activeIndex, index: 0, icon: .homeIconImage, onTabSelection: onTabSelection)
            Spacer()
            BottomBarItemView(activeIndex: activeIndex, index: 1, icon: .heartIconImage, onTabSelection: onTabSelection)
            Spacer()
            BottomBarItemView(activeIndex: activeIndex, index: 2, icon: .messageIconImage, onTabSelection: onTabSelection)
            Spacer()
            BottomBarItemView(activeIndex: activeIndex, index: 3, icon: .userIconImage, onTabSelection: onTabSelection)
        }
        .padding(.horizontal, 45)
        .padding(.vertical, 29)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 45))
        .shadow(color: .black.opacity(0.03), radius: 30, x: 0, y: -10)
        .coordinateSpace(name: "bottom-bar")
    }
}

struct BottomBarView_Previews: PreviewProvider {
    static var previews: some View {
        BottomBarView(activeIndex: 0)
            .purpleBackground()
    }
}
