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
        view.backgroundColor = .green
        return view
    }
    
    func updateUIView (_ uiView: UIViewType, context: Context){
        
    }
}

struct UITextFieldViewRepresentable: UIViewRepresentable{
    @Binding var text: String
    
    func makeUIView(context: Context) -> some UIView {
        let textField = getTextField()
        textField.delegate = context.coordinator
        return textField
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    private func getTextField() -> UITextField{
        let textField = UITextField(frame: .zero)
        
        let placeholder = NSAttributedString(
            string: "Type here...",
            attributes: [
                .foregroundColor : UIColor.red
            ]
        )
        textField.attributedPlaceholder = placeholder
        return textField
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(text: $text)
    }
    
    class Coordinator: NSObject, UITextFieldDelegate{
        @Binding var text: String
        
        init(text: Binding<String>) {
            self._text = text
        }
        
        func textFieldDidChangeSelection(_ textField: UITextField) {
            text = textField.text ?? ""
        }
    }
}

