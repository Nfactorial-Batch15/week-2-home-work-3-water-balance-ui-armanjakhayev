//
//  Screen9.swift
//  HW6
//
//  Created by Arman on 12/11/21.
//

import SwiftUI

struct Screen9: View {
    var body: some View {
        VStack{
            ZStack{
                HStack{
                    Image(systemName: "chevron.left")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239/255))
                        .frame(width: 18, height: 24)
                        .padding(.leading,9)
                    Spacer()
                }
                Text("THE GOAL")
                    .font(.system(size: 17))
                    .italic()
                    .fontWeight(.black)
                    .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239/255))
            }.padding(.top, 56)
            Text("What is your goal?")
                .font(.system(size: 36))
                .fontWeight(.semibold)
                .padding(.top,132)
            GoalViews()
            Spacer()
            BlueButton(text: "Save")
                .padding(.bottom, 50)
        }.padding([.leading, .trailing], 16)
            .background(Color(red: 252/255, green: 253/255, blue: 255/255).edgesIgnoringSafeArea(.all))
            .edgesIgnoringSafeArea(.all)
    }
}

struct Screen9_Previews: PreviewProvider {
    static var previews: some View {
        Screen9()
    }
}
