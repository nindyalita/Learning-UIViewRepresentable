//
//  ContentView.swift
//  UIViewRepresentable
//
//  Created by Nindya Alita Rosalia on 15/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var text: String = ""
    
    var body: some View {
        VStack {
            Text("Basic  UIView Representable")
//            basicUIViewRepresentable()
//                .ignoresSafeArea(.all)
            
            Text(text)
            
            HStack {
                Text("SwiftUI")
                TextField("text here...", text: $text)
                    .frame(height: 55)
                .background(.blue)
            }
            HStack {
                Text("UIKit")
                UITextFieldViewRepresentable(text: $text)
                    .updatePlaceholder("new placeholder")
                    .frame(height: 55)
                .background(.blue)
            }
        }
    }
}



#Preview {
    ContentView()
}
