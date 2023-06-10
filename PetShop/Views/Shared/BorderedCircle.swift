//
//  BorderedCircle.swift
//  PetShop
//
//  Created by Dirisu on 10/06/2023.
//

import SwiftUI

struct BorderedCircle: View {
    let size: CGFloat
    
    init(_ size: CGFloat = 7) {
        self.size = size
    }
    
    var body: some View {
        Circle()
            .stroke(.appSkyBlue, lineWidth: 2)
            .frame(width: size, height: size)
    }
}

struct BorderedCircle_Previews: PreviewProvider {
    static var previews: some View {
        BorderedCircle()
            .purpleBackground()
    }
}
