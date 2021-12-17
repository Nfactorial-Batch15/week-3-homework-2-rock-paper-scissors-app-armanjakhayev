//
//  PageTwo.swift
//  RockpaperScissors
//
//  Created by Arman on 12/15/21.
//

import SwiftUI

struct PageTwo: View {
//    @State var hideTwoChoices = false
    var playerScore = 0
    var appScore = 0
    
    var body: some View {
        VStack(spacing: 0){
            Text("Take your pick")
                .font(.system(size: 54))
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
                .padding(.top, 120)
            Text("Score \(playerScore):\(appScore)")
                .font(.system(size: 17))
                .foregroundColor(Color("MyViolet"))
                .padding(.top,12)
            VStack (spacing: 24){
                    NavigationLink(destination: PageThree(choice: "🗿")) {
                        EmojiButton(emoji: "🗿")
                }
                    NavigationLink(destination: PageThree(choice: "📃")) {
                        EmojiButton(emoji: "📃")
                    }
                    NavigationLink(destination: PageThree(choice: "✂️")) {
                        EmojiButton(emoji: "✂️")
                    }
            }
            .padding(.top, 74)
            Spacer()
        }
        .padding(.horizontal)
        .edgesIgnoringSafeArea(.all)
        .navigationTitle(" ")
    }
}

struct EmojiButton: View{
    let emoji: String
    
    var body: some View {
        ZStack{
            Capsule()
                .fill(Color("MyPurple"))
                .frame(height: 128)
            Text(emoji)
                .font(.system(size: 80))
        }
        .padding(.horizontal, 24)
    }
}


struct PageTwo_Previews: PreviewProvider {
    static var previews: some View {
        PageTwo()
    }
}
