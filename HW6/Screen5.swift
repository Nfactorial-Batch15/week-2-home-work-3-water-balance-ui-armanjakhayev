//
//  Screen5.swift
//  HW6
//
//  Created by Arman on 12/11/21.
//

import SwiftUI

struct Screen5: View {
    var body: some View {
        VStack{
            Spacer()
            TabNav2()
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct TabNav2: View {
    @State private var selectedTab: Int = 1
    var body: some View {
        
        TabView(selection: $selectedTab) {
            ScreenGreatJob()
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

struct Screen5_Previews: PreviewProvider {
    static var previews: some View {
        Screen5()
    }
}
