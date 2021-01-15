//
//  UserProfileView.swift
//  TwitterSwiftUI
//
//  Created by Ngo Dang tan on 09/01/2021.
//

import SwiftUI

struct UserProfileView: View {
    @State var selectedFilter: TweetFilterOptions = .tweets
    
    var body: some View {
        ScrollView {
            VStack {
                ProfileHeaderView()
                    .padding()
                FilterButtonView(selectedOption: $selectedFilter).padding()
                ForEach(0..<9) { tweet in
                    TweetCell()
                }
            }
            .navigationTitle("batman")
        }
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}
