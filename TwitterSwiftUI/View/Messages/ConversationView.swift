//
//  ConversationView.swift
//  TwitterSwiftUI
//
//  Created by Ngo Dang tan on 07/01/2021.
//

import SwiftUI

struct ConversationView: View {
    @State var isShowingNewMessageView = false
    @State var showChat = false
    @State var user: User?
    @ObservedObject var viewModel = ConversationsViewModel()
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            
            if let user = user {
                NavigationLink(
                    destination: ChatView(user: user),
                    isActive: $showChat,
                    label: {
                        
                    })
            }
            
            ScrollView {
                VStack {
                    ForEach(viewModel.recentMessages) {  message in
                        NavigationLink(
                            destination: ChatView(user: message.user),
                            label: {
                                ConversationCell(message: message)
                            })
                      
                    }
                }.padding()
            }
            Button(action: { self.isShowingNewMessageView.toggle() }, label: {
                Image(systemName: "envelope")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32 , height: 32)
                    .padding()
            })
            .background(Color(.systemBlue))
            .foregroundColor(Color(.white))
            .clipShape(Circle())
            .padding()
            .sheet(isPresented: $isShowingNewMessageView, content: {
                NewMessageView(show: $isShowingNewMessageView, startChat: $showChat, user: $user)
            })
        }
    }
}

struct ConversationView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationView()
    }
}
