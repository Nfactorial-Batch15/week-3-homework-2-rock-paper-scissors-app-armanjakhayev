//
//  PageTwoMulti.swift
//  RockpaperScissors
//
//  Created by Arman on 12/16/21.
//

import SwiftUI

struct PageTwoMulti: View {
    var player1Score = 0
    var player2Score = 0
    
    var body: some View {
        VStack(spacing: 0){
            Text("Take your pick")
                .font(.system(size: 54))
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
                .padding(.top, 120)
            Text("Player 1 • Score \(player1Score):\(player2Score)")
                .font(.system(size: 17))
                .foregroundColor(Color("MyViolet"))
                .padding(.top,12)
            VStack (spacing: 24){
                    NavigationLink(destination: PageThreeMulti(choice: "🗿")) {
                        EmojiButton(emoji: "🗿")
                }
                    NavigationLink(destination: PageThreeMulti(choice: "📃")) {
                        EmojiButton(emoji: "📃")
                    }
                    NavigationLink(destination: PageThreeMulti(choice: "✂️")) {
                        EmojiButton(emoji: "✂️")
                    }
            }
            .padding(.top, 74)
            Spacer()
        }
        .padding(.horizontal)
        .edgesIgnoringSafeArea(.all)
        .navigationTitle("Round #1")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct PageTwoMulti_Previews: PreviewProvider {
    static var previews: some View {
        PageTwoMulti()
    }
}
