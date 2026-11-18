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
        VStack {
            // Vertical Stack
            HStack(spacing: 15) {
                // ML Text
                Text("\(waterCount)ml")
                    .font(.system(size: 39))
                
                // drop image
                Image(systemName: "drop")
                    .imageScale(.large)
                    .foregroundStyle(.blue)
            }
                .padding(.bottom, 9) // hstack bottom padding

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
                    if (waterCount >= 5000) {
                        // do nothing
                    } else {
                        waterCount += 100
                    }
                    print("debug + button")
                } label: {
                    Image(systemName: "plus")
                }
                .foregroundStyle(.blue)
            }
            
            Button {
                // when pressed, reset waterCount
                waterCount = 0
            } label: {
                Text("Reset")
            }
            .foregroundStyle(.green)
            .padding(.all, 6)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
