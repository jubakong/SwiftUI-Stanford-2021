//
//  EmojiMemoryGame.swift
//  SwiftUI-Stanford-2021
//
//  Created by Jeongbae Kong on 2021/06/28.
//

import Foundation

func makeCardContent(index: Int) -> String {
  return "🙂"
}

class EmojiMemoryGame {
  
  //type variable
  static let emojis = ["🐶","🐱","🐭","🐹","🐰","🦊","🐻","🐼","🐻‍❄️","🐨","🐯","🦁","🐮","🐷","🐽","🐸","🐵","🐔","🐧","🐦","🐤","🦆","🦋","🐛"]
  
  //type func
  static func createMemoryGame() -> MemoryGame<String> {
    MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
      EmojiMemoryGame.emojis[pairIndex]
    }
  }
  
  private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
  
  var cards: Array<MemoryGame<String>.Card> {
    return model.cards
  }
   
}
