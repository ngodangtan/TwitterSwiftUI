//
//  MessageInputView.swift
//  TwitterSwiftUI
//
//  Created by Ngo Dang tan on 08/01/2021.
//

import SwiftUI

struct MessageInputView: View {
    @Binding var messageText: String

    var action: () -> Void
    var body: some View {
        HStack {
            TextField("Message...",text: $messageText)
                .textFieldStyle(PlainTextFieldStyle())
                .frame(minHeight: 30)
            
            Button(action: action){
                Text("Send")
            }
        }
    }
}


