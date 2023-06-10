//
//  BacgroundCircleView.swift
//  PetShop
//
//  Created by Dirisu on 10/06/2023.
//

import SwiftUI

struct BacgroundCircleView: View {
    let opacity: CGFloat

    init(opacity: CGFloat = 0.4) {
        self.opacity = opacity
    }

    var body: some View {
        Circle()
            .fill(LinearGradient(stops: [.init(color: .appAquaMarine, location: 0.081), .init(color: .transparent, location: 0.91)], startPoint: .topLeading, endPoint: .bottomTrailing).opacity(opacity))
    }
}

struct BacgroundCircleView_Previews: PreviewProvider {
    static var previews: some View {
        BacgroundCircleView()
    }
}
