//
//  BottomBarView.swift
//  PetShop
//
//  Created by Dirisu on 10/06/2023.
//

import SwiftUI

struct BottomBarView: View {
    @Binding var activeIndex: Int;
    
    var body: some View {
        HStack {
            BottomBarItemView(activeIndex: $activeIndex, index: 0, icon: .homeIconImage)
            Spacer()
            BottomBarItemView(activeIndex: $activeIndex, index: 1, icon: .heartIconImage)
            Spacer()
            BottomBarItemView(activeIndex: $activeIndex, index: 2, icon: .messageIconImage)
            Spacer()
            BottomBarItemView(activeIndex: $activeIndex, index: 3, icon: .userIconImage)
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
        BottomBarView(activeIndex: .constant(0))
            .purpleBackground()
    }
}
