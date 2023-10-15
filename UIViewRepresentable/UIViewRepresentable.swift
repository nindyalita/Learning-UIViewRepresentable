//
//  UIViewRepresentable.swift
//  UIViewRepresentable
//
//  Created by Nindya Alita Rosalia on 15/10/23.
//

import SwiftUI

struct basicUIViewRepresentable: UIViewRepresentable{
    
    func makeUIView (context: Context) -> some UIView{
        let view = UIView()
        view.backgroundColor = .red
        return view
    }
    
    func updateUIView (_ uiView: UIViewType, context: Context){
        
    }
}

