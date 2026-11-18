//
//  ContentView.swift
//  Waterfy Watch App
//
//  Created by 6niversity on 16/11/2026.
//

import SwiftUI
import WatchKit

struct ContentView: View {
    @State private var waterCount = 0;
    
    var body: some View {
        Text("Waterfy 💧")
            .position(x: 50, y: -25)
            .bold()
        VStack {
            // Vertical Stack
            HStack(spacing: 15) {
                // ML Text
                Text("\(waterCount)ml")
                    .font(.system(size: 40))
                
                //
                Image(systemName: "drop")
                    .imageScale(.large)
                    .foregroundStyle(.blue)
            }

            // buttons
            HStack(spacing: 15) {
                // - button
                Button {
                    if (waterCount == 0) {
                        // do nothing
                    } else {
                        waterCount -= 100
                    }
                    print("debug - button")
                } label: {
                    Image(systemName: "minus")
                }
                .foregroundStyle(.red)
                
                // + button
                Button {
                    waterCount += 100
                    print("debug + button")
                } label: {
                    Image(systemName: "plus")
                }
                .foregroundStyle(.blue)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
