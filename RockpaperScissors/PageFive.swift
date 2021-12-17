//
//  PageFive.swift
//  RockpaperScissors
//
//  Created by Arman on 12/16/21.
//

import SwiftUI

struct PageFive: View {
    @State var showPageSix: Bool
    var choice: String
    var appChoice = Int.random(in: 0...2)
    
    var body: some View {
        VStack(spacing: 0){
            NavigationLink(isActive: $showPageSix) {
                PageSix(choice: self.choice, appChoice: self.appChoice)
            } label: {
                EmptyView()
            }
            Text("Your opponent’s pick")
                .font(.system(size: 54))
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
                .padding(.top, 120)
                .multilineTextAlignment(.center)

            VStack (spacing: 24){
                switch appChoice {
                case 0:
                    Button (action: {}) {
                        EmojiButton(emoji: "🗿" )
                    }
                case 1:
                    Button (action: {}) {
                        EmojiButton(emoji: "📃" )
                    }
                default:
                    Button (action: {}) {
                        EmojiButton(emoji: "✂️" )
                    }
                }
            }
            .padding(.top, 74)
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    showPageSix = true
                }
            }
            Spacer()
        }
        .padding(.horizontal)
        .edgesIgnoringSafeArea(.all)
        .navigationTitle(" ")
    }
}

struct PageFive_Previews: PreviewProvider {
    static var previews: some View {
        PageFive(showPageSix: false, choice: " ")
    }
}
