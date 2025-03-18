//
//  CMTabView.swift
//  CamelMap
//
//  Created by JongHyuk Park on 2/24/25.
//

import SwiftUI

enum CMTabViewSelection {
    case home
    case setting
}

struct CMTabView: View {
    @State var selection: CMTabViewSelection = .home
    var body: some View {
        TabView(selection: $selection) {
            MainView()
                .ignoresSafeArea(edges: .top)
                .tabItem {
                    Image(systemName: "house")
                    Text("홈")
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "gearshape.fill")
                    Text(verbatim: "프로필")
                }	
        }
    }
}

//#Preview {
//    CMTabView()
//}
