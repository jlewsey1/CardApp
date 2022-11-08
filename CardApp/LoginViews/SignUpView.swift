//
//  SignUpView.swift
//  CardApp
//
//  Created by Jacob Lewsey on 11/1/22.
//

import SwiftUI
import FirebaseAuth
import FirebaseCore
import FirebaseFirestore

struct SignUpView: View {
    @State private var presentAlert = false
    @State private var errorMessage = ""
    
    @Binding var logIn: Bool
    @Binding var signUp: Bool
    
    @State private var email = ""
    @State private var password = ""
        
    
    @State var db = Firestore.firestore()
    @State var ref: DocumentReference? = nil
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .fill(.red.opacity(0.9))
                .frame(width: 1000, height: 400)
                .rotationEffect(.degrees(135))
                .offset(y: -350)
            ZStack{
                Circle()
                    .frame(width: 395)
                Circle()
                    .fill(.white)
                    .frame(width: 375)
                Rectangle()
                    .fill(.red)
                    .frame(width: 375, height: 15)
                Circle()
                    .fill(.red)
                    .frame(width: 100)
                Circle()
                    .fill(.white)
                    .frame(width: 80)
                Circle()
                    .frame(width: 60)
                Circle()
                    .fill(.white)
                    .frame(width: 55)
            }
            VStack(spacing: 20) {
                Text("Create Account")
                    .font(.system(size: 40))
                    .bold()
                    .padding()
                    .foregroundColor(.white)
                    .shadow(color: .black, radius: 3)
                    .offset(x: -40, y: -60)
                TextField("", text: $email)
                    .foregroundColor(.red)
                    .textFieldStyle(.plain)
                    .placeholder(when: email.isEmpty) {
                        Text("Email")
                            .font(.system(size: 20))
                            .foregroundColor(.red)
                            .bold()
                            .opacity(0.9)
                    }
                    .padding()
                    .frame(width: 300, height: 50)
                    .offset(y: 5)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                Rectangle()
                    .fill(.red)
                    .frame(width: 270, height: 1)
                    .offset(y: -25)
                SecureField("", text: $password)
                    .foregroundColor(.black)
                    .textFieldStyle(.plain)
                    .placeholder(when: password.isEmpty) {
                        Text("Password")
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                            .bold()
                            .opacity(0.9)
                    }
                    .padding()
                    .frame(width: 300, height: 50)
                    .offset(y: 55)
                    .disableAutocorrection(true)
                Rectangle()
                    .fill(.black)
                    .frame(width: 270, height: 1)
                    .offset(y: 25)
            }
            .offset(y: -81)
            Button("Create Account"){
                register()
            }
            .alert(isPresented: $presentAlert) { // 4
                Alert(
                    title: Text("Error"),
                    message: Text(errorMessage)
                )
            }
            .buttonStyle(SignUpButton())
            .offset(y: 261)
            Button("Go Back"){
                // return to login page
                logIn.toggle()
                signUp.toggle()
            }
            .foregroundColor(.white)
            .font(.system(size: 20, weight: .bold))
            .frame(width: 200, height: 50)
            .background(Color.red.opacity(0.9))
            .cornerRadius(10)
            .offset(y: 347)
        }
        .foregroundColor(.black)
    }
    
    
    
    func register() {
        // register and make the account in the database
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print(error.localizedDescription)
                presentAlert = true;
                if (error.localizedDescription == "There is no user record corresponding to this identifier. The user may have been deleted."){
                    errorMessage = "Invalid email, try again."
                }
                else if (error.localizedDescription == "The password is invalid or the user does not have a password."){
                    errorMessage = "Invalid password, try again."
                }
                else{
                    errorMessage = error.localizedDescription
                }
            }
            else {
                // add info to database here as it was successful in creating the user
                ref = db.collection("users").addDocument(data: ["email": email, "username": email])
                { err in
                    if let err = err {
                        print("Error adding document: \(err)")
                    } else {
                        print("Document added with ID: \(ref!.documentID)")
                    }
                }
                logIn.toggle()
                signUp.toggle()
            }
        }
    }
    
}

struct SignUpView_Previews: PreviewProvider {
    @State static var logIn = false
    @State static var signUp = true
    
    static var previews: some View {
        SignUpView(logIn: $logIn, signUp: $signUp)
    }
}

struct SignUpButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .font(.system(size: 25, weight: .bold))
            .foregroundColor(.white)
            .frame(width: 300, height: 50)
            .background(Color.red.opacity(0.9))
            .cornerRadius(10)
    }
}


