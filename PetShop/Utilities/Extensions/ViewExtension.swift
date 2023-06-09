//
//  ViewExtension.swift
//  WeatherApp
//
//  Created by Dirisu on 08/05/2023.
//

import SwiftUI

extension View {
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
