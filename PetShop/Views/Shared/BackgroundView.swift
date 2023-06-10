//
//  BackgroundView.swift
//  PetShop
//
//  Created by Dirisu on 10/06/2023.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        ZStack {
            Color.appPurple
                .edgesIgnoringSafeArea(.all)
            GeometryReader { proxy in
                ZStack(alignment: .top) {
                    BacgroundCircleView()
                        .scaleEffect(2)
                        .offset(x: -proxy.widthFraction(83), y: -proxy.heightFraction(35))
                    BacgroundCircleView(opacity: 0.2)
                        .offset(x: proxy.widthFraction(45), y: proxy.heightFraction(40))
                    
                    BorderedCircle()
                        .offset(x: proxy.widthFraction(35), y: proxy.heightFraction(50))
                    BorderedCircle()
                        .offset(x: -proxy.widthFraction(36), y: proxy.heightFraction(74))
                    
                    WhiteCircleView()
                        .offset(x: proxy.widthFraction(38), y: proxy.heightFraction(66.5))
                    WhiteCircleView(12)
                        .offset(x: -proxy.widthFraction(35), y: proxy.heightFraction(67.5))
                }
            }
        }
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
