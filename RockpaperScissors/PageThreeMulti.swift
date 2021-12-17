//
//  PageThreeMulti.swift
//  RockpaperScissors
//
//  Created by Arman on 12/16/21.
//

import SwiftUI

struct PageThreeMulti: View {
//    @State var showAppChoice = false
    var choice: String
    var player1Score = 0
    var player2Score = 0
    
    var body: some View {
        VStack(spacing: 0){
            Text("You pick")
                .font(.system(size: 54))
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
                .padding(.top, 120)
            Text("Player 1 • Score \(player1Score):\(player2Score)")
                .font(.system(size: 17))
                .foregroundColor(Color("MyViolet"))
                .padding(.top,12)
            VStack (spacing: 24){
                NavigationLink(destination: PageFourMulti(choice: self.choice, choice2: self.choice)) {
                        EmojiButton(emoji: "\(choice)")
                            .transition(.slide)
                    }
            }
            .padding(.top, 74)

            Spacer()
            NavigationLink(destination: PageTwoMulti(),
                               label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 8)
                                .foregroundColor(Color("MyViolet"))
                            Text("I changed my mind")
                                .foregroundColor(.white)
                        }.frame(height: 50)
                }).padding(.bottom, 40)
        }
        .padding(.horizontal)
        .edgesIgnoringSafeArea(.all)
        .navigationTitle(" ")
    }
}

struct PageThreeMulti_Previews: PreviewProvider {
    static var previews: some View {
        PageThreeMulti(choice: " ")
    }
}
