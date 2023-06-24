////
////  AppTabView.swift
////  PetShop
////
////  Created by Dirisu on 15/06/2023.
////
//
//import SwiftUI
//
//struct AppTab<Content>: View where Content: View {
//    public var body: Never
//    
//    let tab: Int
//    
//    init(tab: Int, @ViewBuilder content: () -> Content) {
//        self.tab = tab
//    }
//}
//
//struct AppTabView: View {
//    var tabIndex: Int
//    var contents: [AnyView]
//    
//    init(tabIndex: Int, content: @escaping () -> [AnyView]) {
//        self.tabIndex = tabIndex
//        self.contents = content()
//    }
//    
//    var body: some View {
//        contents[tabIndex]
//    }
//}
//
//struct AppTabView_Previews: PreviewProvider {
//    static var previews: some View {
//        AppTabView(tabIndex: 0, content: {
//            [Text("Tab 1")]
//        })
//    }
//}
