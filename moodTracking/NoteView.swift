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
            Text("Note Mood").font(.title2.bold()).foregroundStyle(.white).padding().frame(maxWidth: .infinity, alignment: open ? .center : .topLeading)
            
            if open {
                TextEditor(text: $text).padding(10).scrollContentBackground(.hidden).frame(height: 100,al).background(.gray.opacity(0.3),in: .rect(cornerRadius: 8))
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
        }.frame(height: open ? 190 : 55).frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/).background(.gray.opacity(0.3), in: .rect(cornerRadius: 12)).clipped().onTapGesture {
            withAnimation {
                if !open {
                    open.toggle()
                }
            }
        
        }
            
        
    }
}

#Preview {
    NoteView()
}
