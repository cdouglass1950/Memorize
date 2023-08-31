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
            cardView()
            cardView()
            cardView()
            cardView()
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct cardView: View {
    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack() {
            let base = RoundedRectangle(cornerRadius: 12)
            
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text("👻")
                .font(.largeTitle)
            } else {
                base.fill()
            }
            
        }
        .onTapGesture {
            isFaceUp.toggle()
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
