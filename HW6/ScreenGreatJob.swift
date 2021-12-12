//
//  ScreenGreatJob.swift
//  HW6
//
//  Created by Arman on 12/11/21.
//

import SwiftUI

struct ScreenGreatJob: View {
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
                    Image("Level")
                        .padding(.top,30)
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
                    Text("34%")
                        .font(.system(size: 36, weight: .bold))
                        .foregroundColor(.black)
                        .padding(.top,90)
                    Text("0,8 out of 2,4 L")
                        .font(.system(size: 16))
                        .foregroundColor(.black)
                        .padding(.top,2)
                    Text("Monday, 25th of November")
                        .font(.system(size: 17))
                        .foregroundColor(.black)
                        .padding(.top,98)
                    Spacer()
                }
                VStack{
                    Text("Great Job!")
                        .font(.system(size: 36, weight: .bold))
                        .foregroundColor(.black)
                        .padding(.top,60)
                        .multilineTextAlignment(.center)
                }
            }.padding(.top,30)
            Spacer()
            BlueButton(text: "Add")
                .padding(.bottom,107)
        }
        .padding(.horizontal, 16)
            .background(Color(red: 252/255, green: 253/255, blue: 255/255).edgesIgnoringSafeArea(.all))
            .edgesIgnoringSafeArea(.all)
    }
}

struct ScreenGreatJob_Previews: PreviewProvider {
    static var previews: some View {
        ScreenGreatJob()
    }
}
