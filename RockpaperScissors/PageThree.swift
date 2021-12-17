//
//  PageThree.swift
//  RockpaperScissors
//
//  Created by Arman on 12/15/21.
//

import SwiftUI

struct PageThree: View {
    @State var showAppChoice = false
    var playerScore = 0
    var appScore = 0
    var choice: String
    
    var body: some View {
        VStack(spacing: 0){
            Text("You pick")
                .font(.system(size: 54))
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
                .padding(.top, 120)
            Text("Score \(playerScore):\(appScore)")
                .font(.system(size: 17))
                .foregroundColor(Color("MyViolet"))
                .padding(.top,12)
            VStack (spacing: 24){
                    NavigationLink(destination: PageFour(choice: self.choice)) {
                        EmojiButton(emoji: "\(choice)")
                            .transition(.slide)
                    }
            }
            .padding(.top, 74)

            Spacer()
            NavigationLink(destination: PageTwo(),
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

struct PageThree_Previews: PreviewProvider {
    static var previews: some View {
        PageThree(choice: " ")
    }
}
