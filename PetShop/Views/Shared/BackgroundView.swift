//
//  BackgroundView.swift
//  PetShop
//
//  Created by Dirisu on 10/06/2023.
//

import SwiftUI

struct BackgroundView: View {
    let animate: Bool;
    @State private var animationFraction: CGFloat = 1;
    
    init(animate: Bool = true) {
        self.animate = animate
        guard animate else {return}
        _animationFraction = State(initialValue: 0)
    }
    
    func incrementAnimationFraction() {
        guard animate else {return}
        
        withAnimation(.spring(response: 2, dampingFraction: 2, blendDuration: 2)) {
            animationFraction = 1
        }
    }
    
    var body: some View {
        ZStack {
            Color.appPurple
                .edgesIgnoringSafeArea(.all)
            GeometryReader { proxy in
                ZStack(alignment: .top) {
                    BacgroundCircleView()
                        .scaleEffect(2)
                        .offset(x: -proxy.widthFraction(83) * animationFraction, y: -proxy.heightFraction(35) * animationFraction)
                    BacgroundCircleView(opacity: 0.2)
                        .offset(x: proxy.widthFraction(45) * animationFraction, y: proxy.heightFraction(40) * animationFraction)
                    
                    BorderedCircle()
                        .offset(x: proxy.widthFraction(35) * animationFraction, y: proxy.heightFraction(50) * animationFraction)
                    BorderedCircle()
                        .offset(x: -proxy.widthFraction(36) * animationFraction, y: proxy.heightFraction(74) * animationFraction)
                    
                    WhiteCircleView()
                        .offset(x: proxy.widthFraction(38) * animationFraction, y: proxy.heightFraction(66.5) * animationFraction)
                    WhiteCircleView(12)
                        .offset(x: -proxy.widthFraction(35) * animationFraction, y: proxy.heightFraction(67.5) * animationFraction)
                }
            }
        }
        .onAppear(perform: incrementAnimationFraction)
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
