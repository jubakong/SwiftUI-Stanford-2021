//
//  ContentView.swift
//  SwiftUI-Stanford-2021
//
//  Created by Jeongbae Kong on 2021/06/26.
//

import SwiftUI

struct EmojiMemoryGameView: View {
  @ObservedObject var viewModel: EmojiMemoryGame
  
  var body: some View {
    VStack {
      ScrollView {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
          ForEach(viewModel.cards) { card in
            CardView(card).aspectRatio(2/3, contentMode: .fit)
              .onTapGesture {
                viewModel.choose(card)
              }
          }
        }
      }
      .foregroundColor(.red)
    }
    .padding(.horizontal)
  }
}

struct CardView: View {
  private var card: EmojiMemoryGame.Card
  
  init(_ givenCard: EmojiMemoryGame.Card) {
    card = givenCard
  }
  
  var body: some View {
    ZStack {
      let shape = RoundedRectangle(cornerRadius: 20)
      if card.isFaceUp {
        shape
          .fill()
          .foregroundColor(.white)
        shape
          .strokeBorder(lineWidth: 3)
        
        Text(card.content)
          .font(.largeTitle)
      } else if card.isMatched {
        shape.opacity(0)
      } else {
        shape
          .fill()
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    let game = EmojiMemoryGame()
    EmojiMemoryGameView(viewModel: game)
      .preferredColorScheme(.dark)
    
    EmojiMemoryGameView(viewModel: game)
      .preferredColorScheme(.light)
  }
}
