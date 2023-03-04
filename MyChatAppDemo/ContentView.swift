//
//  ContentView.swift
//  MyChatAppDemo
//
//  Created by Dmytro Popelnukh on 2023-03-02.
//

import SwiftUI

struct ContentView: View {
    
    var messageArray = ["Hello", "Fuck You!", "Fuck U2!!!!", "Bye!", "FUUU!"]
    
    var body: some View {
        VStack {
            VStack {
                TitleRow()
                
                ScrollView {
                    ForEach(messageArray, id: \.self) {
                        text in MessageBubble(message: Message(id: "123", text: text, received: true, timestamp: Date()))
                    }
                }
                .padding(10)
                .background(.white)
                .cornerRadius(30, corners: [.topLeft, .topRight])
            }
            .background(Color("Peach"))
            MessageField()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
