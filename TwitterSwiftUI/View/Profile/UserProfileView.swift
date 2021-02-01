//
//  UserProfileView.swift
//  TwitterSwiftUI
//
//  Created by Ngo Dang tan on 09/01/2021.
//

import SwiftUI

struct UserProfileView: View {
    @State var selectedFilter: TweetFilterOptions = .tweets
    @ObservedObject var viewModel : ProfileViewModel
    
    init(user: User){
        self.user = user
        self.viewModel = ProfileViewModel(user: user)
    }
    
    let user: User
    var body: some View {
        ScrollView {
            VStack {
                ProfileHeaderView(viewModel: viewModel, isFollowed: $viewModel.isFollowed)
                    .padding()
                FilterButtonView(selectedOption: $selectedFilter).padding()
                ForEach(0..<9) { tweet in
                    //TweetCell()
                }
            }
            .navigationTitle("batman")
        }
    }
}


