//
//  Screen8.swift
//  HW6
//
//  Created by Arman on 12/11/21.
//

import SwiftUI

struct Screen8: View {
    var body: some View {
        ZStack{
            VStack(spacing:0){
                HStack{
                    Image(systemName: "chevron.left")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239/255))
                        .frame(width: 18, height: 24)
                        .padding(.leading,9)
                        .padding(.top,56)
                    Spacer()
                }
                Spacer()
            }
            VStack(spacing:0){
                Text("WATER")
                    .font(.system(size: 24))
                    .italic()
                    .fontWeight(.black)
                    .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239/255))
                    .padding(.top,56)
                Text("Water intake")
                    .font(.system(size: 36))
                    .fontWeight(.semibold)
                    .padding(.top,132)
                ZStack{
                    BlueBackgroundSmall()
                        HStack(spacing: 12){
                            TextFieldButton2()
                            Text("ML")
                        }
                }.padding(.top,32)
                Spacer()
                BlueButton(text: "Add")
                    .padding(.bottom,50)
            }.padding(.horizontal, 16)
                .background(Color(red: 252/255, green: 253/255, blue: 255/255).edgesIgnoringSafeArea(.all))
                .edgesIgnoringSafeArea(.all)
        }
    }
}

struct TextFieldButton2: View {
    var body: some View {
        Button(action: {}) {
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color.white)
                HStack{
                    TextField(" ", text: .constant("200"))
                        .keyboardType(.numberPad)
                        .font(.system(size: 16))
                        .foregroundColor(.blue)
                        .padding(.horizontal,24)
                }
            }.frame(width: 250, height: 60)
        }
    }
}

struct Screen8_Previews: PreviewProvider {
    static var previews: some View {
        Screen8()
    }
}
