//
//  PageSix.swift
//  RockpaperScissors
//
//  Created by Arman on 12/16/21.
//

import SwiftUI

struct PageSix: View {
    var choice: String
    var appChoice: Int
    var playerScore = 0
    var appScore = 0
        
    var body: some View {
        
        VStack(spacing: 0){
            resultText(choice: self.choice, appChoice: self.appChoice)
            Text("Score \(playerScore):\(appScore)")
                .font(.system(size: 17))
                .foregroundColor(Color("MyViolet"))
                .padding(.top,12)
            ZStack{
                HStack{
                    Button (action: {}) {
                        EmojiButtonSmall(emoji: "\(choice)" )
                    }
                    Spacer()
                }
                HStack{
                    Spacer()
                    switch appChoice {
                    case 0:
                        Button (action: {}) {
                            EmojiButtonSmall(emoji: "🗿")
                                .padding()
                        }.padding(.top, 80)
                    case 1:
                        Button (action: {}) {
                            EmojiButtonSmall(emoji: "📃")
                                .padding()
                        }.padding(.top, 80)
                    default:
                        Button (action: {}) {
                            EmojiButtonSmall(emoji: "✂️")
                                .padding()
                        }.padding(.top, 80)
                    }
                }
            }
            .padding(.top, 134)
            Spacer()
            NavigationLink(destination: PageTwo(),
                               label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 8)
                                .foregroundColor(Color("MyViolet"))
                            Text("Another round")
                                .foregroundColor(.white)
                        }.frame(height: 50)
                }).padding(.bottom, 40)
        }
        .padding(.horizontal)
        .edgesIgnoringSafeArea(.all)
        .navigationTitle(" ")
    }
}

struct EmojiButtonSmall: View{
    let emoji: String
    
    var body: some View {
        ZStack{
            Capsule()
                .fill(Color("MyPurple"))
                .frame(width: 198, height: 128)
                .overlay(
                        Capsule()
                            .stroke(Color.white, lineWidth: 10)
                        )
            Text(emoji)
                .font(.system(size: 80))
        }
        .padding(.horizontal, 24)
    }
}

struct resultText: View{
    var choice: String
    var appChoice: Int
    
    var body: some View {
        if choice == "🗿" && appChoice == 1 {
            LinearGradient(gradient: Gradient(colors: [Color("MyPink"), Color("MyRed")]), startPoint: .leading, endPoint: .trailing)
            .mask(textResult(result: "Lose (")).frame(height: 58)
            .padding(.top, 120)
//            appScore += 1
        } else if choice == "🗿" && appChoice == 2 {
            LinearGradient(gradient: Gradient(colors: [Color("MySalad"), Color("MyGreen")]), startPoint: .leading, endPoint: .trailing)
            .mask(textResult(result: "Win!")).frame(height: 58)
            .padding(.top, 120)
//            playerScore += 1
        }  else if choice == "📃" && appChoice == 2 {
            LinearGradient(gradient: Gradient(colors: [Color("MyPink"), Color("MyRed")]), startPoint: .leading, endPoint: .trailing)
            .mask(textResult(result: "Lose (")).frame(height: 58)
            .padding(.top, 120)
//            appScore += 1
        } else if choice == "📃" && appChoice == 0 {
            LinearGradient(gradient: Gradient(colors: [Color("MySalad"), Color("MyGreen")]), startPoint: .leading, endPoint: .trailing)
            .mask(textResult(result: "Win!")).frame(height: 58)
            .padding(.top, 120)
//            playerScore += 1
        } else if choice == "✂️" && appChoice == 0 {
            LinearGradient(gradient: Gradient(colors: [Color("MyPink"), Color("MyRed")]), startPoint: .leading, endPoint: .trailing)
            .mask(textResult(result: "Lose (")).frame(height: 58)
            .padding(.top, 120)
//            appScore += 1
        } else if choice == "✂️" && appChoice == 1 {
            LinearGradient(gradient: Gradient(colors: [Color("MySalad"), Color("MyGreen")]), startPoint: .leading, endPoint: .trailing)
            .mask(textResult(result: "Win!")).frame(height: 58)
            .padding(.top, 120)
//            playerScore += 1
        } else {
                LinearGradient(gradient: Gradient(colors: [Color("MyYellow"), Color("MyOrange")]), startPoint: .leading, endPoint: .trailing)
                .mask(textResult(result: "Tie!")).frame(height: 58)
                .padding(.top, 120)
        }
    }
}
    
struct textResult: View{
    var result: String

    var body: some View {
        Text(result)
        .font(.system(size: 54))
        .fontWeight(.bold)
        .frame(maxWidth: .infinity)
    }
}

struct PageSix_Previews: PreviewProvider {
    static var previews: some View {
        PageSix(choice: " ", appChoice: 0)
    }
}
