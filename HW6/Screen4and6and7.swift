//
//  Screen4.swift
//  HW6
//
//  Created by Arman on 12/11/21.
//

import SwiftUI

struct Screen4and6and7: View {
    var body: some View {
        VStack{
            Spacer()
            TabNav()
        }
        .edgesIgnoringSafeArea(.all)
    }
}




struct TabNav: View {
    @State private var selectedTab: Int = 1
    var body: some View {
        
        TabView(selection: $selectedTab) {
            ScreenAddFirst()
                .tabItem {
                    Label("Main", systemImage: "house")
                }
                .tag(1)
            ScreenSettings()
                .tabItem {
                    Label("Settings", systemImage: "slider.horizontal.3")
                }
                .tag(2)
            ScreenHistory()
                .tabItem {
                    Label("History", systemImage: "doc")
                }
                .tag(3)
        }
    }
}

struct Screen4_Previews: PreviewProvider {
    static var previews: some View {
        Screen4and6and7()
    }
}
