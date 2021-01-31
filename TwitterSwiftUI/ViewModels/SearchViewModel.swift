//
//  SearchViewModel.swift
//  TwitterSwiftUI
//
//  Created by Ngo Dang tan on 30/01/2021.
//

import SwiftUI
import Firebase
class SearchViewModel: ObservableObject {
    @Published var users = [User]()
    
    init(){
        fetchUsers()
    }
    
    
    func fetchUsers(){
        COLLECTION_USERS.getDocuments { snapshot, _ in
            guard let documents = snapshot?.documents else {return}
            self.users = documents.map({ User(dictionary: $0.data()) })
            
          
        }
    }
}
