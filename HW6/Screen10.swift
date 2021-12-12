//
//  Screen10.swift
//  HW6
//
//  Created by Arman on 12/11/21.
//

import SwiftUI

struct Screen10: View {
    var body: some View {
        VStack(spacing:0){
                ZStack{
                    HStack(spacing: 0){
                        Image(systemName: "chevron.left")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239/255))
                            .frame(width: 18, height: 24)
                            .padding(.leading,9)
                        Spacer()
                    }
                    Text("REMINDER")
                        .font(.system(size: 17))
                        .italic()
                        .fontWeight(.black)
                        .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239/255))
                }.padding(.top,56)
//                Spacer()
            
            VStack(spacing:0){
                Text("Remind me each")
                    .font(.system(size: 36))
                    .fontWeight(.semibold)
                    .padding(.top,132)
                GoalViews2()
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

struct Screen10_Previews: PreviewProvider {
    static var previews: some View {
        Screen10()
    }
}
