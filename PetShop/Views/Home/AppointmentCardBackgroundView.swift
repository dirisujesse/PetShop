//
//  AppointmentCardBackgroundView.swift
//  PetShop
//
//  Created by Dirisu on 10/06/2023.
//

import SwiftUI

struct AppointmentCardBackgroundView: View {
    let animate: Bool;
    @State private var animationFraction: CGFloat = 1;
    
    init(animate: Bool = true) {
        self.animate = animate
        guard animate else {return}
        _animationFraction = State(initialValue: 0)
    }
    
    func incrementAnimationFraction() {
        guard animate else {return}
        
        withAnimation(.spring(response: 2, dampingFraction: 2, blendDuration: 1)) {
            animationFraction = 1
        }
    }
    
    var body: some View {
        ZStack {
            Color.appPurple
            GeometryReader { proxy in
                ZStack(alignment: .top) {
                    BacgroundCircleView()
                        .scaleEffect(1.5)
                        .offset(x: -proxy.localWidhtFraction(30) * animationFraction, y: -proxy.localHeightFraction(40) * animationFraction)
                    BacgroundCircleView(opacity: 0.2)
                        .scaleEffect(1.5)
                        .offset(x: proxy.localWidhtFraction(70) * animationFraction, y: proxy.localHeightFraction(10) * animationFraction)
                    
                    BorderedCircle()
                        .offset(x: proxy.localWidhtFraction(55) * animationFraction, y: proxy.localHeightFraction(10) * animationFraction)
                    
                    BorderedCircle()
                        .offset(x: proxy.localWidhtFraction(40) * animationFraction, y: proxy.localHeightFraction(80) * animationFraction)
                    
                    BorderedCircle(9)
                        .offset(x: proxy.localWidhtFraction(70) * animationFraction, y: proxy.localHeightFraction(70) * animationFraction)
                    
                    WhiteCircleView(4)
                        .offset(x: proxy.localWidhtFraction(67) * animationFraction, y: proxy.localHeightFraction(60) * animationFraction)
                    
                    WhiteCircleView()
                        .offset(x: proxy.localWidhtFraction(36) * animationFraction, y: proxy.localHeightFraction(60) * animationFraction)
                }
            }
        }
        .onAppear(perform: incrementAnimationFraction)
    }
}

struct AppointmentCardBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        AppointmentCardBackgroundView()
            .frame(maxHeight: 200)
    }
}
