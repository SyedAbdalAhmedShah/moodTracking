//
//  ContentView.swift
//  moodTracking
//
//  Created by Abdal Shah on 19/08/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var feeling = "? "
    @State var FColor: Color = .white
    @State var scrollToBottom = false
    @State var selectedMode: ImageResource = .happy
    
    var body: some View {
      
        ZStack (alignment: .bottomTrailing
                ){
            Color.black.ignoresSafeArea()
            
            Circle().foregroundStyle(FColor).frame(width: 300,height: 300).blur(radius: 200).offset(x: 130,y: 130)
            ScrollView {
                topTitle
                IconView(FColor: $FColor, selectedMode: $selectedMode)
               
            }
         
        }
    }
    
    
    var topTitle:some View {
        VStack (alignment:.leading,spacing: 10, content: {
            Text("How Do You Feel")
            
            HStack(content: {
                Text("Today")
                Text(feeling).foregroundStyle(FColor).contentTransition(.numericText())
            })
            
        }).foregroundStyle(.white).font(.largeTitle.bold()).frame(maxWidth:  .infinity, alignment: .leading)
    }
}

#Preview {
    ContentView()
}


 struct IconView: View {
     @Binding var FColor: Color
     @State var scale = false
     @Binding var selectedMode: ImageResource
     @State var faceScale :CGFloat = 1
    var body: some View {
        
        ZStack(content: {
            Circle().frame(width: 220, height: 220).foregroundStyle(FColor).opacity(scale ? 0 : 1).scaleEffect(scale ? 1 : 0.4)
            Circle().frame(width: 300, height: 300).foregroundStyle(FColor).opacity(scale ? 0 : 1).scaleEffect(scale ? 1 : 0.2)
            Image(selectedMode).resizable().scaledToFit().frame(width: 150, height: 150).scaleEffect(faceScale)
        }).onAppear() {
            withAnimation(.linear(duration: 3).repeatForever(autoreverses: false)) {
                scale.toggle()
            }
        }
      
    }
}

