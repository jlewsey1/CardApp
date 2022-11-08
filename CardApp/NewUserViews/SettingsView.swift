//
//  SettingsView.swift
//  CardApp
//
//  Created by Jacob Lewsey on 11/6/22.
//

import SwiftUI
import FirebaseAuth
import FirebaseCore
import FirebaseFirestore

struct SettingsView: View {
    @State private var presentAlert = false

    @State var user = Auth.auth().currentUser
    @Binding var username: String
    @State var text = ""
    @State var db = Firestore.firestore()
    
    @StateObject var firestoreManager = FirestoreManager(email: (Auth.auth().currentUser!.email)!)
        
    var body: some View {
        ZStack{
            Form{
                TextField("", text: $text)
                    .foregroundColor(.white)
                    .textFieldStyle(.plain)
                    .placeholder(when: text.isEmpty) {
                        Text("Username")
                            .font(.system(size: 18))
                            .foregroundColor(.white)
                            .opacity(0.8)
                    }
                    .frame(height: 35)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
            }
            Button("Update Username"){
                // update username and other settings if added
                username = text
                firestoreManager.updateUsername(username: username)
                presentAlert.toggle()
            }
            .alert(isPresented: $presentAlert) { // 4
                Alert(title: Text("Updated Username"))
            }
            .offset(x: 95, y: -262)
            .bold()
        }
        .ignoresSafeArea(.keyboard)
    }
}

struct SettingsView_Previews: PreviewProvider {
    @State static var username = ""
    static var previews: some View {
        SettingsView(username: $username).preferredColorScheme(.dark)
    }
}
