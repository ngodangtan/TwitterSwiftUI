//
//  ProfileViewModel.swift
//  TwitterSwiftUI
//
//  Created by Ngo Dang tan on 31/01/2021.
//

import Firebase
import SwiftUI
class ProfileViewModel: ObservableObject {
    let user: User
    @Published var isFollowed = false
    
    init(user: User){
        self.user = user
    }
    
    func follow(){
        guard let currentUid = Auth.auth().currentUser?.uid else {return}
        
        COLLECTION_FOLLOWING.document(currentUid).collection("user-following").document(user.id).setData([:]) { _ in
            COLLECTION_FOLLOWERS.document(self.user.id).collection("user-followers").document(currentUid).setData([:]) { _ in
                self.isFollowed = true
            }
        }
    }
    
    func unfollow(){
        
    }
}
