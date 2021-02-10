//
//  NewMessageView.swift
//  TwitterSwiftUI
//
//  Created by Ngo Dang tan on 09/01/2021.
//

import SwiftUI

struct NewMessageView: View {
    @State var searchText = ""
    @Binding var show: Bool
    @Binding var startChat: Bool
    @Binding var user: User?
    @ObservedObject var viewModel = SearchViewModel(config: .newMessage)
    var body: some View {
        ScrollView {
            SearchBar(text: $searchText)
                .padding()
            VStack(alignment: .leading) {
                ForEach(searchText.isEmpty ? viewModel.users : viewModel.filterUsers(searchText)){ user in
                    HStack {Spacer()}
                    Button(action: {
                        self.show.toggle()
                        self.startChat.toggle()
                        self.user = user
                    }, label: {
                        UserCell(user: user)
                    })
                    
                }
            }.padding(.leading)
        }
        
  
        
    }
}


