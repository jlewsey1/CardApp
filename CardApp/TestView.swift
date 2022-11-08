//
//  TestView.swift
//  CardApp
//
//  Created by Jacob Lewsey on 11/6/22.
//

import SwiftUI
import FirebaseCore
import FirebaseFirestore

struct TestView: View {
    let db = Firestore.firestore()

    var body: some View {
        Button(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/){
            addDocument()
        }
        
    }
    func addDocument() {
        var ref: DocumentReference? = nil
        ref = db.collection("users").addDocument(data: [
            "first": "Ada",
            "last": "Lovelace",
            "born": 1815
        ]) { err in
            if let err = err {
                print("Error adding document: \(err)")
            } else {
                print("Document added with ID: \(ref!.documentID)")
            }
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView().preferredColorScheme(.dark)
    }
}
