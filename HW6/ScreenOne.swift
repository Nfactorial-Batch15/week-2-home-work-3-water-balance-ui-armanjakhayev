//
//  ScreenOne.swift
//  HW6
//
//  Created by Arman on 12/12/21.
//

import SwiftUI

struct ScreenOne: View {
    var body: some View {
        
        VStack(alignment: .center, spacing: 0) {
            Text("WATER BALANCE")
                .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239/255))
                .font(.system(size: 24))
                .italic()
                .fontWeight(.black)
                .frame(maxWidth: .infinity)
                .padding(.top, 108)
            
            Text("What is your goal?")
                .foregroundColor(Color(red: 47/255, green: 47/255, blue: 51/255))
                .font(.system(size: 36))
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity)
                .padding(.top, 62)
            
            GoalViews()
                .padding(.top, 32)
            
            Spacer()
            BlueButton(text: "Next")
                .padding(.bottom, 50)
            
        }
        .padding([.leading, .trailing], 16)
        .background(Color(red: 252/255, green: 253/255, blue: 255/255).edgesIgnoringSafeArea(.all))
        .edgesIgnoringSafeArea(.all)
    }
    }



    struct GoalViews: View {
        var body: some View {
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .foregroundColor(Color(red: 212/255, green: 225/255, blue: 248/255))
                
                VStack(alignment: .center, spacing: 14) {
                    ChoiceGoalCustom(title: "Goal Number One", image: Image("Picker"))
                    
                    ChoiceGoalCustom(title: "Goal Number Two")
                    
                    ChoiceGoalCustom(title: "Goal Number Two")
                    
                    ChoiceGoalCustom(title: "Goal Number Four")
                }
                .padding(.horizontal, 19)
                .padding(.vertical, 24)
            }
            .frame(height: 330)

            
        }
    }


    struct BlueButton: View {
        let text: String
        var body: some View {
            Button {
                print("Next button was pressed")
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 16)
                        .foregroundColor(Color(red: 24/255, green: 104/255, blue: 253/255))
                    Text(text)
                        .font(.system(size: 22))
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
                .frame(height: 60)
            }

        }
    }



    struct ScreenOne_Previews: PreviewProvider {
        static var previews: some View {
            ScreenOne()
        }
    }

    struct ChoiceGoalCustom: View {
        var title: String = ""
        var image: Image = Image("Empty")
        var body: some View {
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .foregroundColor(Color(red: 252/255, green: 253/255, blue: 255/255))
                HStack {
                    Text(title)
                        .foregroundColor(Color(red: 47/255, green: 47/255, blue: 51/255))
                        .font(.system(size: 16))
                        .fontWeight(.semibold)
                    Spacer()
                    image
                }
                .padding([.leading, .trailing], 24)
            }
        }
    }
