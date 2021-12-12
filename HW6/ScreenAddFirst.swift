//
//  ScreenAddFirst.swift
//  HW6
//
//  Created by Arman on 12/11/21.
//

import SwiftUI

struct ScreenAddFirst: View {
    var body: some View {
        VStack(spacing:0){
            Text("WATER BALANCE")
                .font(.system(size: 17))
                .italic()
                .fontWeight(.black)
                .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239/255))
                .padding(.top,56)
            ZStack{
                VStack{
                    BlueGradientBackground()
                    Spacer()
                }
                VStack{
                    Circle()
                        .trim(from: 0, to: 1)
                        .stroke(Color.white, lineWidth: 4)
                        .frame(width: 180, height: 180)
                        .padding(.top,32)
                    Spacer()
                }
                VStack(spacing:0){
                    Text("0%")
                        .font(.system(size: 36, weight: .bold))
                        .foregroundColor(.black)
                        .padding(.top,90)
                    Text("0 out of 2,4 L")
                        .font(.system(size: 16))
                        .foregroundColor(.black)
                        .padding(.top,2)
                    Text("Monday, 25th of November")
                        .font(.system(size: 17))
                        .foregroundColor(.black)
                        .padding(.top,98)
                    Spacer()
                }
                VStack(spacing:0){
                    Text("Add your first drink for today")
                        .font(.system(size: 36, weight: .bold))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                }.padding(.top,60)
            }.padding(.top,30)
            Spacer()
            BlueButton(text: "Add")
                .padding(.bottom,107)
        }.padding(.horizontal, 16)
            .background(Color(red: 252/255, green: 253/255, blue: 255/255).edgesIgnoringSafeArea(.all))
            .edgesIgnoringSafeArea(.all)
    }
}

struct BlueGradientBackground: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 16)
            .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 212/255, green: 225/255, blue: 248/255), .white]), startPoint: .top, endPoint: .bottom))
            .frame(height: 332)
    }
}

struct ScreenAddFirst_Previews: PreviewProvider {
    static var previews: some View {
        ScreenAddFirst()
    }
}
