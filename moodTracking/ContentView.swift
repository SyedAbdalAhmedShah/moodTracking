//
//  ContentView.swift
//  moodTracking
//
//  Created by Abdal Shah on 19/08/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      
        ZStack (alignment: .bottomTrailing
                ){
            Color.black.ignoresSafeArea()
            
            Circle().foregroundStyle(.white).frame(width: 300,height: 300).blur(radius: 200)
            
            
        }
    }
}

#Preview {
    ContentView()
}
