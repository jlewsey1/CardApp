//
//  StartingView.swift
//  CardApp
//
//  Created by Jacob Lewsey on 11/2/22.
//

import SwiftUI
import FirebaseAuth
import WebKit
import FirebaseCore
import FirebaseFirestore

struct StartingView: View {
    @Binding var loggedIn: Bool
    @Binding var logIn: Bool
    
    @State var user = Auth.auth().currentUser
    
    @State var showSettings = false
    
    @StateObject var firestoreManager = FirestoreManager(email: (Auth.auth().currentUser!.email)!)
    // gets the username and ID for us
    
    init(loggedIn: Binding<Bool>, logIn: Binding<Bool>) {
        self._loggedIn = loggedIn
        self._logIn = logIn
    }
        
    var body: some View {
        NavigationStack{
            ZStack{
                BackgroundView()

                Text("\(firestoreManager.username)'s Homepage")
                    .offset(y: -250)
                    .font(.system(size: 24))
                
                Button(){
                    // open options to add new page
                    // after selecting page type add options to add all required things for page
                    // create a button that links to that page
                    // have it be a form style
                } label: {
                    Image(systemName: "plus")
                        .resizable()
                        .offset(x: -150, y: -360)
                        .foregroundColor(.white)
                        .frame(width: 25, height: 25)
                }
                
                NavigationLink(destination: SettingsView(username: $firestoreManager.username), label: {
                    Image(systemName: "gearshape.fill")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 25, height: 25)
                })
                .offset(x: 150, y: -360)
                
                Button("Sign Out"){
                    try? Auth.auth().signOut()
                    loggedIn.toggle()
                    logIn.toggle()
                }
                .buttonStyle(LogOutButton())
                .offset(y: 250)
            }
        }
    }
}


struct StartingView_Previews: PreviewProvider {
    
    @State static var loggedIn = true
    @State static var logIn = false
    @State static var ID = ""
    @State static var username = ""
    
    static var previews: some View {
        StartingView(loggedIn: $loggedIn, logIn: $logIn).preferredColorScheme(.dark)
    }
}

struct LogOutButton: ButtonStyle {
        
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .font(.system(size: 15, weight: .bold))
            .foregroundColor(.white)
            .frame(width: 150, height: 40)
            .background(.red)
            .cornerRadius(10)
    }
}

struct BackgroundView: View {
    var body: some View {
        Color.black
            .ignoresSafeArea()
        RoundedRectangle(cornerRadius: 30, style: .continuous)
            .fill(.red)
            .frame(width: 6000, height: 400)
            .rotationEffect(.degrees(159))
            .offset(x: -100, y: -505)
        RoundedRectangle(cornerRadius: 30, style: .continuous)
            .fill(.red)
            .frame(width: 6000, height: 400)
            .rotationEffect(.degrees(159))
            .offset(x: -100, y: 575)
    }
}
                
/*
 WHAT IF I MAKE STUFF THAT ADDS INFORMATION TO THE DATABASE
 USING THE DATA IN THE DATABASE IT BUILDS THE PAGE FOR WHICHEVER USER LOGGED IN
 IE: A BUTTON THAT LETS THEM ADD A BUTTON AND A DESTINATION PAGE THEN THE DATABASE WILL KEEP
 TRACK AND THEN ADD IT
 
 */
