//
//  WhiteCircle.swift
//  PetShop
//
//  Created by Dirisu on 10/06/2023.
//

import SwiftUI

struct WhiteCircleView: View {
    let size: CGFloat
    
    init(_ size: CGFloat = 20) {
        self.size = size
    }
    
    var body: some View {
        Circle()
            .fill(.white)
            .frame(width: size, height: size)
    }
}

struct WhiteCircleView_Previews: PreviewProvider {
    static var previews: some View {
        WhiteCircleView()
            .purpleBackground()
    }
}
