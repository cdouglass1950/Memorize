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
        
        VStack(alignment: .leading) {
            Text("Memorize")
                .font(.largeTitle)
                .foregroundColor(.white)
            
            HStack {
                ScrollView {
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                        ForEach(emojis[0..<emojiCount], id: \.self,  content: { emoji in
                            CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
                        })
                    }
                }
            }
            Spacer()
            
            HStack {
                remove
                Spacer()
                shuffle
                Spacer()
                add
            }
            .font(.largeTitle)
            .padding(.horizontal)
            .foregroundColor(.accentColor)
        }
        .padding(.horizontal)
        .foregroundColor(.red)
    }
    
    var remove: some View {
        Button {
            let width = UIScreen.main.bounds.width
            emojiCount = Int.random(in: 4...vehicles.count)
            emojis = vehicles
            emojis.shuffle()
            
//            if emojiCount > 1 {
//                emojiCount -= 1
//            }
            
        } label: {
            VStack {
                Image(systemName: "car")
                    .foregroundColor(.blue)
                    .font(.system(size: 50))
                Text("Vehicles")
                    .font(.headline)
            }
        }
    }
    
    var add: some View {
        Button {
            emojiCount = Int.random(in: 6...animals.count)
            emojis = animals
            emojis.shuffle()
//            if emojiCount < emojis.count {
//                emojiCount += 1
//            }
            
        } label: {
            VStack {
                Image(systemName: "pawprint.circle.fill")
                    .foregroundColor(.blue)
                    .font(.system(size: 50))
                Text("Animals")
                    .font(.headline)
            }
        }
    }
    
    var shuffle: some View {
        //Text("Shuffle")
        Image(systemName: "fork.knife.circle.fill")
            .foregroundColor(.blue)
            .font(.system(size: 50))
    }
}

struct CardView: View {
    
    @State var isFaceUp: Bool = true
    var content: String
    
    var body: some View {
            
            ZStack {
                let shape = RoundedRectangle(cornerRadius: 20)
                
                if isFaceUp {
                    shape.fill().foregroundColor(.white)
                    shape.strokeBorder(lineWidth: 2)
                    
                    Text(content).font(.largeTitle)
                } else {
                    shape.fill()
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
