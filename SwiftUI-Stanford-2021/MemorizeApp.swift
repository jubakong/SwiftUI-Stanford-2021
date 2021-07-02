//
//  MemorizeApp.swift
//  SwiftUI-Stanford-2021
//
//  Created by Jeongbae Kong on 2021/06/30.
//

import SwiftUI

//@main
struct MemorizeApp: App {
  let game = EmojiMemoryGame()
  
  var body: some Scene {
    WindowGroup {
      EmojiMemoryGameView(viewModel: game)
    }
  }
}
