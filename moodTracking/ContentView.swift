//
//  ContentView.swift
//  moodTracking
//
//  Created by Abdal Shah on 19/08/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var feeling = "? "
    var body: some View {
      
        ZStack (alignment: .bottomTrailing
                ){
            Color.black.ignoresSafeArea()
            
            Circle().foregroundStyle(.white).frame(width: 300,height: 300).blur(radius: 200).offset(x: 130,y: 130)
            ScrollView {
                topTitle
            }
         
        }
    }
    
    
    var topTitle:some View {
        VStack (alignment:.leading, content: {
            Text("How Do You Feel")
            
            HStack(content: {
                Text("Today")
                Text(feeling).contentTransition(.numericText())
            })
            
        }).foregroundStyle(.white).font(.largeTitle.bold()).frame(maxWidth:  .infinity, alignment: .leading)
    }
}

#Preview {
    ContentView()
}
