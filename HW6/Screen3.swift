//
//  Screen3.swift
//  HW6
//
//  Created by Arman on 12/11/21.
//

import SwiftUI

struct Screen3: View {
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
            VStack(spacing: 0){
                Text("WATER BALANCE")
                    .font(.system(size: 24))
                    .italic()
                    .fontWeight(.black)
                    .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239/255))
                    .padding(.top,108)
                Text("Daily intake?")
                    .font(.system(size: 36))
                    .fontWeight(.semibold)
                    .padding(.top,62)
                GoalViews3()
                    .padding(.top,32)
                Spacer()
                BlueButton(text: "Save")
                    .padding(.bottom,50)
            }
        }.padding(.horizontal, 16)
            .background(Color(red: 252/255, green: 253/255, blue: 255/255).edgesIgnoringSafeArea(.all))
            .edgesIgnoringSafeArea(.all)
    }
}

struct GoalViews3: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(Color(red: 212/255, green: 225/255, blue: 248/255))
            VStack(alignment: .center, spacing: 14) {
                HStack(spacing: 12){
                    TextFieldButton()
                    Text("ML")
                }
            }
            .padding(.horizontal, 19)
            .padding(.vertical, 24)
        }.padding(.horizontal,16)
        .frame(height: 108)
    }
}

struct TextFieldButton: View {
    var body: some View {
        Button(action: {}) {
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color.white)
                HStack{
                    TextField(" ", text: .constant("2400"))
                        .keyboardType(.numberPad)
                        .font(.system(size: 16))
                        .foregroundColor(.blue)
                        .padding(.horizontal,24)
                }
            }.frame(width: 250, height: 60)
        }
    }
}

struct BlueBackgroundSmall: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 16)
            .fill(Color(red: 212/255, green: 225/255, blue: 248/255))
            .frame(width: 358, height: 108)
    }
}

struct Screen3_Previews: PreviewProvider {
    static var previews: some View {
        Screen3()
    }
}
