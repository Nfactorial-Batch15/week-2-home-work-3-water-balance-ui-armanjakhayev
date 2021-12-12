//
//  ScreenSettings.swift
//  HW6
//
//  Created by Arman on 12/11/21.
//

import SwiftUI

struct ScreenSettings: View {
    var body: some View {
        VStack(spacing:0){
            Text("EDIT")
                .font(.system(size: 17))
                .italic()
                .fontWeight(.black)
                .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239/255))
                .padding(.top,56)
            Settings()
            Spacer()
        }
        .padding(.leading)
            .background(Color(red: 252/255, green: 253/255, blue: 255/255).edgesIgnoringSafeArea(.all))
            .edgesIgnoringSafeArea(.all)
    }
}

struct Settings: View {
    var body: some View {
        VStack(spacing:0){
            HStack{
                Text("Daily Intake Level")
                Spacer()
                Text("2400 ML")
                    .foregroundColor(Color(red: 60/255, green: 60/255, blue: 67/255))
                    .opacity(0.6)
                Image(systemName: "chevron.right")
                    .foregroundColor(Color(red: 60/255, green: 60/255, blue: 67/255))
                    .opacity(0.6)
            }
                .padding(.top,41)
                .padding(.trailing)
            Divider().padding(.top,11)
                .padding(.bottom,21)
            HStack{
                Text("Your goal")
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(Color(red: 60/255, green: 60/255, blue: 67/255))
                    .opacity(0.6)
            }
                .padding(.trailing)
            Divider().padding(.top,11)
                .padding(.bottom,21)
            HStack{
                Text("Reminder")
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(Color(red: 60/255, green: 60/255, blue: 67/255))
                    .opacity(0.6)
            }
            .padding(.trailing)
            Divider().padding(.top,11)
                .padding(.bottom,21)
        }
        .font(.system(size: 17))
        .foregroundColor(.black)
    }
}

struct ScreenSettings_Previews: PreviewProvider {
    static var previews: some View {
        ScreenSettings()
    }
}
