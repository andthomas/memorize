//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Andy Brown on 3/7/20.
//  Copyright © 2020 Andy Brown. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame {
    private var model: MemoryGame<String> = createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻", "🎃", "🕷"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    // Access to the model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card )
    }
    
    
}
