//
//  EmojiMemoryGame.swift
//  SwiftUI-Stanford-2021
//
//  Created by Jeongbae Kong on 2021/06/28.
//

import Foundation

class EmojiMemoryGame: ObservableObject {
  typealias Card = MemoryGame<String>.Card
  
  //type variable
  private static let emojis = ["🐶","🐱","🐭","🐹","🐰","🦊","🐻","🐼","🐻‍❄️","🐨","🐯","🦁","🐮","🐷","🐽","🐸","🐵","🐔","🐧","🐦","🐤","🦆","🦋","🐛"]
  
  //type func
  private static func createMemoryGame() -> MemoryGame<String> {
    MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
      emojis[pairIndex]
    }
  }
  
  @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
  
  var cards: Array<Card> {
    model.cards
  }
  
  // MARK: - Intent(s)
  func choose(_ card: MemoryGame<String>.Card) {
    model.choose(card)
  }
}
