//
//  Screen2.swift
//  HW6
//
//  Created by Arman on 12/11/21.
//

import SwiftUI

struct Screen2: View {
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    Image(systemName: "chevron.left")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239/255))
                        .frame(width: 18, height: 24)
                        .padding(.leading,9)
                    Spacer()
                }.padding(.top,55)
                Spacer()
            }
            VStack(spacing:0) {
                Text("WATER BALANCE")
                    .font(.system(size: 24))
                    .italic()
                    .fontWeight(.black)
                    .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239/255))
                    .padding(.top,108)
                Text("Remind me each")
                    .font(.system(size: 36))
                    .fontWeight(.semibold)
                    .padding(.top,62)
                GoalViews2()
                    .padding(.top,32)
                Spacer()
                BlueButton(text: "Next")
                    .padding(.bottom,50)
            }
        }.padding(.horizontal, 16)
            .background(Color(red: 252/255, green: 253/255, blue: 255/255).edgesIgnoringSafeArea(.all))
            .edgesIgnoringSafeArea(.all)
    }
}

struct GoalViews2: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(Color(red: 212/255, green: 225/255, blue: 248/255))
            
            VStack(alignment: .center, spacing: 14) {
                HStack(spacing: 14){
                    WhiteSmallButton(text: "15 minutes")
                    WhiteSmallButton(text: "30 minutes")
                }
                HStack(spacing: 14){
                    WhiteSmallButton(text: "45 minutes")
                    WhiteSmallButton(text: "1 hour")
                }
                HStack(spacing: 14){
                    WhiteSmallButton(text: "1,5 hours")
                    WhiteSmallButton(text: "2 hours")
                }
                HStack(spacing: 14){
                    WhiteSmallButton(text: "3 hours")
                    WhiteSmallButton(text: "4 hours")
                }
            }
            .padding(.horizontal, 19)
            .padding(.vertical, 24)
        }.padding(.horizontal,16)
        .frame(height: 330)
    }
}

struct WhiteSmallButton: View {
    @State private var selected = 1
    let text: String
    var action: () -> Void = {}

    var body: some View {
        Button(action: action) {
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color.white)
                HStack{
                    Text(text)
                        .font(.system(size: 16))
                        .foregroundColor(.black)
                        .padding(.horizontal,24)
                }
            }.frame(height: 60)
        }
    }
}

struct Screen2_Previews: PreviewProvider {
    static var previews: some View {
        Screen2()
    }
}
