//
//  ContentView.swift
//  UIViewRepresentable
//
//  Created by Nindya Alita Rosalia on 15/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Basic UIView Representable")
            basicUIViewRepresentable()
                .ignoresSafeArea(.all)
        }
    }
}



#Preview {
    ContentView()
}
