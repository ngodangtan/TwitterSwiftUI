//
//  TweetActionViewModel.swift
//  TwitterSwiftUI
//
//  Created by Ngo Dang tan on 02/02/2021.
//

import Foundation
class TweetActionViewModel: ObservableObject {
    let tweet: Tweet
    @Published var didLike = false
    
    init(tweet: Tweet){
        self.tweet = tweet
        checkIfUserLikeTweet()
    }
    
    func likeTweet(){
        guard let uid = AuthViewModel.shared.userSession?.uid else {return}
        let tweetLikesRef = COLLECTION_TWEETS.document(tweet.id).collection("tweet-likes")
        let userLikesRef = COLLECTION_USERS.document(uid).collection("user-likes")
        
        COLLECTION_TWEETS.document(tweet.id).updateData(["likes": tweet.likes + 1]) { _ in
            tweetLikesRef.document(uid).setData([:]){ _ in
                userLikesRef.document(self.tweet.id).setData([:]){ _ in
                    self.didLike = true
                    
                }
            }
        }
    }
    
    func unlikeTweet(){
        guard let uid = AuthViewModel.shared.userSession?.uid else {return}
        let tweetLikesRef = COLLECTION_TWEETS.document(tweet.id).collection("tweet-likes")
        let userLikesRef = COLLECTION_USERS.document(uid).collection("user-likes")
        
        COLLECTION_TWEETS.document(tweet.id).updateData(["likes": tweet.likes]) { _ in
            tweetLikesRef.document(uid).delete { _ in
                userLikesRef.document(self.tweet.id).delete { _ in
                    self.didLike = false
                }
            }
        }
    }
    
    func checkIfUserLikeTweet(){
        guard let uid = AuthViewModel.shared.userSession?.uid else {return}
        let userLikeRef = COLLECTION_USERS.document(uid).collection("user-likes").document(tweet.id)
        
        userLikeRef.getDocument { snapshot, _ in
            guard let didLike = snapshot?.exists else {return}
            self.didLike = didLike
        }
    }
}
