//
//  MessageField.swift
//  MyChatAppDemo
//
//  Created by Dmytro Popelnukh on 2023-03-03.
//

import SwiftUI

struct MessageField: View {
    
    @State private var message = ""
    
    
    var body: some View {
        HStack {
            CustomTextField(placeholder: Text("Enter Your message here"), text: $message)
            
            Button {
                print("Message sent!")
                message = ""
            } label: {
                Image(systemName: "paperplane.fill")
                    .foregroundColor(.white)
                    .padding(10)
                    .background(Color("Peach"))
                    .cornerRadius(50)
            }
            
            
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .background(Color("Gray"))
        .cornerRadius(50)
        .padding()
    }
}

struct MessageField_Previews: PreviewProvider {
    static var previews: some View {
        MessageField()
    }
}


struct CustomTextField: View {
    
    var placeholder: Text
    @Binding var text: String
    var edditingChanged: (Bool) -> () = {_ in}
    var commit: () -> () = {}
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                placeholder
                    .opacity(0.5)
            }
            TextField("", text: $text, onEditingChanged: edditingChanged, onCommit: commit)
        }
    }
}
