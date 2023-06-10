//
//  ViewExtension.swift
//  WeatherApp
//
//  Created by Dirisu on 08/05/2023.
//

import SwiftUI

struct BackgroudModifier: ViewModifier {
    let animate: Bool;
    
    func body(content: Content) -> some View {
        ZStack {
            BackgroundView(animate: animate)
            content
        }
    }
}

extension GeometryProxy {
    var width: CGFloat {
        size.width
    }

    var height: CGFloat {
        size.height
    }

    var globalWidth: CGFloat {
        frame(in: .global).width
    }

    var globalHeight: CGFloat {
        frame(in: .global).height
    }

    var localWidth: CGFloat {
        frame(in: .local).width
    }

    var localHeight: CGFloat {
        frame(in: .global).height
    }

    func refWidth(_ refFrame: AnyHashable) -> CGFloat {
        frame(in: .named(refFrame)).width
    }

    func refHeight(_ refFrame: AnyHashable) -> CGFloat {
        frame(in: .named(refFrame)).height
    }

    func heightFraction(_ percentage: CGFloat) -> CGFloat {
        height.fraction(percentage)
    }

    func widthFraction(_ percentage: CGFloat) -> CGFloat {
        width.fraction(percentage)
    }

    func globalHeightFraction(_ percentage: CGFloat) -> CGFloat {
        globalHeight.fraction(percentage)
    }

    func globalWidhtFraction(_ percentage: CGFloat) -> CGFloat {
        globalWidth.fraction(percentage)
    }

    func refHeightFraction(_ refFrame: AnyHashable, _ percentage: CGFloat) -> CGFloat {
        refHeight(refFrame).fraction(percentage)
    }

    func refWidthFraction(_ refFrame: AnyHashable, _ percentage: CGFloat) -> CGFloat {
        refWidth(refFrame).fraction(percentage)
    }
}

extension CGFloat {
    func fraction(_ percentage: CGFloat) -> CGFloat {
        self * (percentage / 100)
    }
}

extension View {
    func purpleBackground(animate: Bool = true) -> some View {
        modifier(BackgroudModifier(animate: animate))
    }

    private var bounds: CGRect {
        UIScreen.main.bounds
    }

    var width: CGFloat {
        bounds.width
    }

    var height: CGFloat {
        bounds.height
    }

    func vh(_ fraction: CGFloat) -> CGFloat {
        return height * (fraction / 100)
    }

    func vw(_ fraction: CGFloat) -> CGFloat {
        return width * (fraction / 100)
    }
}
