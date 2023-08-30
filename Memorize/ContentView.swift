//
//  ContentView.swift
//  Memorize
//
//  Created by Cary Douglass on 7/22/23.
//

import SwiftUI

struct ContentView: View {
    
    var vehicles = ["🚗", "🚕", "🚙", "🚌", "🚎", "🏎️", "🚓", "🚑", "🚒", "🚐", "🛻", "🚚", "🚜", "🛴", "🛵", "🏍️", "🛺", "🚔", "🚍", "🚘", "🚖", "🚡", "🚟", "🚝"]
    var animals = ["🐔", "🪿", "🦉", "🐺", "🦄", "🫎", "🐝", "🪱", "🦋", "🐌", "🐍", "🦖", "🐙", "🦑", "🦞", "🦀", "🐠", "🐬"]
    var food = ["🥑", "🥦", "🌽", "🥕", "🧄", "🍞", "🥖", "🥨", "🧀", "🥓", "🥩", "🍗", "🍖", "🌭", "🍔", "🍟", "🍕", "🥪", "🌮", "🫔", "🍝", "🍜", "🍲", "🍛", "🍣", "🥟", "🦪", "🍤", "🥮", "🍢", "🍡"]
    
    @State var emojis = ["🚗", "🚕", "🚙", "🚌", "🚎", "🏎️", "🚓", "🚑", "🚒", "🚐", "🛻", "🚚", "🚜", "🛴", "🛵", "🏍️", "🛺", "🚔", "🚍", "🚘", "🚖", "🚡", "🚟", "🚝"]
    @State var emojiCount = 20
    
    var body: some View {
        
        HStack() {
            cardView(isFaceUp: true)
            cardView()
            cardView()
            cardView()
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct cardView: View {
    var isFaceUp: Bool = false
    
    var body: some View {
        ZStack() {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12)
                .strokeBorder(lineWidth: 2)
                Text("👻")
                .font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.orange)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.light)
    }
}
