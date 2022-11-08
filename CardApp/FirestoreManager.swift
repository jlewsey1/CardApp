//
//  FirestoreManager.swift
//  CardApp
//
//  Created by Jacob Lewsey on 11/6/22.
//

import Foundation
import Firebase

class FirestoreManager: ObservableObject{
    var userEmail: String
    @Published var userID: String=""
    @Published var username: String=""
    
    init(email: String) {
        userEmail = email
        fetchIDandUsername(email: email)
    }
    
    func fetchIDandUsername(email: String) {
        let db = Firestore.firestore()
        let docRef = db.collection("users")

        docRef.getDocuments() { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                for document in querySnapshot!.documents {
                    let data = document.data()
                    let email = data["email"] as? String ?? ""
                    if (self.userEmail == email){
                        self.userID = document.documentID
                        self.username = data["username"] as? String ?? ""
                    }
                }
            }
        }
    }
    
    func updateUsername(username: String){
        Firestore.firestore().collection("users").document(userID).setData([ "username": username ], merge: true)
    }
}
