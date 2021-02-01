//
//  ContentView.swift
//  TwitterSwiftUI
//
//  Created by Ngo Dang tan on 06/01/2021.
//

import SwiftUI
import Kingfisher
struct ContentView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
        Group{
            if viewModel.userSession != nil {
                NavigationView {
                    TabView {
                        FeedView()
                            .tabItem {
                                Image(systemName: "house")
                                Text("Home")
                            }
                        SearchView()
                            .tabItem {
                                Image(systemName: "magnifyingglass")
                                Text("Home")
                            }
                        ConversationView()
                            .tabItem {
                                Image(systemName: "envelope")
                                Text("Messages")
                            }
                    }
                    .navigationTitle("Home")
                    .navigationBarItems(leading: Button(action: {
                        viewModel.signOut()
                    }, label: {
                        if let user = viewModel.user {
                            KFImage(URL(string: user.profileImageUrl))
                                .resizable()
                                .scaledToFill()
                                .clipped()
                                .frame(width: 32, height: 32)
                                .cornerRadius(16)
                        }
                      
                    }))
                    .navigationBarTitleDisplayMode(.inline)
                     
                }
            }else {
                LoginView()
            }
        }
   
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
