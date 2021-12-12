//
//  ScreenHistory.swift
//  HW6
//
//  Created by Arman on 12/11/21.
//

import SwiftUI

struct ScreenHistory: View {
    var body: some View {
        VStack(spacing:0){
            Text("TODAY")
                .font(.system(size: 17))
                .italic()
                .fontWeight(.black)
                .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239/255))
                .padding(.top,56)
            OneHistory()
            Spacer()
        }
        .padding(.leading , 16)
            .background(Color(red: 252/255, green: 253/255, blue: 255/255).edgesIgnoringSafeArea(.all))
            .edgesIgnoringSafeArea(.all)
    }
}

struct OneHistory: View {
    var body: some View {
        VStack(spacing:0){
            HStack{
                Text("250 ml")
                Spacer()
                Text("12:13")
                    .foregroundColor(Color(red: 60/255, green: 60/255, blue: 67/255))
                    .opacity(0.6)
                    .padding(.trailing)
            }.padding(.top,41)
            Divider().padding(.vertical,23)
            HStack{
                Text("200 ml")
                Spacer()
                Text("14:10")
                    .foregroundColor(Color(red: 60/255, green: 60/255, blue: 67/255))
                    .opacity(0.6)
                    .padding(.trailing)
            }
            Divider().padding(.vertical,23)
            HStack{
                Text("50 ml")
                Spacer()
                Text("15:13")
                    .foregroundColor(Color(red: 60/255, green: 60/255, blue: 67/255))
                    .opacity(0.6)
                    .padding(.trailing)
            }
            Divider().padding(.vertical,23)
            HStack{
                Text("300 ml")
                Spacer()
                Text("19:10")
                    .foregroundColor(Color(red: 60/255, green: 60/255, blue: 67/255))
                    .opacity(0.6)
                    .padding(.trailing)
            }
            Divider().padding(.vertical,23)
        }
        .font(.system(size: 17))
        .foregroundColor(.black)
        .edgesIgnoringSafeArea(.all)
    }
}

struct ScreenHistory_Previews: PreviewProvider {
    static var previews: some View {
        ScreenHistory()
    }
}
