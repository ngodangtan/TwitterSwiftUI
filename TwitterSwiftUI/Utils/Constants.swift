//
//  Constants.swift
//  TwitterSwiftUI
//
//  Created by Ngo Dang tan on 30/01/2021.
//

import Firebase

let COLLECTION_USERS = Firestore.firestore().collection("users")
let COLLECTION_FOLLOWERS = Firestore.firestore().collection("followers")
let COLLECTION_FOLLOWING = Firestore.firestore().collection("following")
let COLLECTION_TWEETS = Firestore.firestore().collection("tweets")
