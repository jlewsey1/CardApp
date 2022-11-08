//
//  ContentView.swift
//  CardApp
//
//  Created by Jacob Lewsey on 10/29/22.
//

import SwiftUI
import FirebaseAuth
import WebKit
import FirebaseCore
import FirebaseFirestore

struct ContentView: View {
    @State private var loggedIn = false
    @State private var logIn = true
    @State private var signUp = false
    
    @State private var email = ""
    @State private var password = ""
    @State private var ID = ""
    @State private var username = ""
    
    var body: some View {
        if (logIn){
            LoginView(loggedIn: $loggedIn, logIn: $logIn, signUp: $signUp, email: $email, password: $password)
        }
        else if (signUp){
            SignUpView(logIn: $logIn, signUp: $signUp)
        }
        else if (loggedIn){
            // do some user checking and pull up specific user view
            let user = Auth.auth().currentUser
            if let user = user {
                // The user's ID, unique to the Firebase project.
                // Do NOT use this value to authenticate with your backend server,
                // if you have one. Use getTokenWithCompletion:completion: instead.
                //let uid = user.uid
                let userEmail = user.email
                if (userEmail == "jlewsey@gmail.com"){
                    JacobView(loggedIn: $loggedIn, logIn: $logIn)
                }
                else if (userEmail != ""){
                    // find the ID and pass it
                    StartingView(loggedIn: $loggedIn, logIn: $logIn)
                }
            }
        }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.dark)
    }
}

// for ebay listings
struct WebView: UIViewRepresentable {
    var url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}
