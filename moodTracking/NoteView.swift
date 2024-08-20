//
//  NoteView.swift
//  moodTracking
//
//  Created by Abdal Shah on 20/08/2024.
//

import SwiftUI

struct NoteView: View {
    @State var open = true
    @State var text = "type.."
    
    var body: some View {
        VStack(content: {
            Text("Note Mood").font(.title2.bold()).foregroundStyle(.white).padding()
            
            if open {
                TextEditor(text: $text).padding(10).scrollContentBackground(.hidden).frame(height: 100).background(.gray.opacity(0.3),in: .rect(cornerRadius: 8))
            }
        }).overlay(alignment: .topTrailing) {
            Button(action: {
                withAnimation {
                    open.toggle()
                }
            }
                   , label: {
                Image(systemName: "xmark.circle.fill").padding().opacity(open ? 1 : 0).animation(.none, value: open)
            }).tint(.white)
        }
       
        
    }
}

#Preview {
    NoteView()
}
