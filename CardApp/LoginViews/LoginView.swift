//
//  LoginView.swift
//  CardApp
//
//  Created by Jacob Lewsey on 11/1/22.
//

import SwiftUI
import FirebaseAuth

struct LoginView: View {
    @State private var presentAlert = false
    @State private var errorMessage = ""
    
    @Binding var loggedIn: Bool
    @Binding var logIn: Bool
    @Binding var signUp: Bool
    
    @Binding var email: String
    @Binding var password: String
    
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
                    .trim(from:0.5, to: 1)
                    .fill(.red)
                    .frame(width: 375)
                Circle()
                    .trim(from:0, to:0.5)
                    .fill(.white)
                    .frame(width: 375)
                Rectangle()
                    .frame(width: 500, height: 15)
                Circle()
                    .fill(.black)
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
            .opacity(0.9)
            VStack(spacing: 20) {
                Text("Card App")
                    .font(.system(size: 40))
                    .bold()
                    .padding()
                    .foregroundColor(.white)
                    .shadow(color: .black, radius: 3)
                    .offset(x: -95, y: -55)
                TextField("", text: $email)
                    .foregroundColor(.white)
                    .textFieldStyle(.plain)
                    .placeholder(when: email.isEmpty) {
                        Text("Email")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .bold()
                            .opacity(0.9)
                    }
                    .padding()
                    .frame(width: 300, height: 50)
                    .offset(y: 10)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                Rectangle()
                    .fill(.white)
                    .frame(width: 270, height: 1)
                    .offset(y: -20)
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
                    .offset(y: 60)
                    .disableAutocorrection(true)
                Rectangle()
                    .fill(.black)
                    .frame(width: 270, height: 1)
                    .offset(y: 30)
                Button("Login") {
                    // if valid user do this
                    login()
                    self.email = ""
                    self.password = ""
                }
                .alert(isPresented: $presentAlert) { // 4
                    Alert(
                        title: Text("Error"),
                        message: Text(errorMessage)
                    )
                }.padding()
                .buttonStyle(LoginButton())
                .offset(y: 155)
                
                Button("Create Account"){
                    // go to sign up page
                    logIn.toggle()
                    signUp.toggle()
                }
                .foregroundColor(.white)
                .font(.system(size: 20, weight: .bold))
                .frame(width: 200, height: 50)
                .background(Color.red.opacity(0.9))
                .cornerRadius(10)
                .offset(y: 155)
            }
        }
        .foregroundColor(.black)
    }
    
    func login() {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
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
                logIn.toggle()
                loggedIn.toggle()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    @State static var loggedIn = false
    @State static var logIn = true
    @State static var signUp = false
    @State static var email = ""
    @State static var password = ""
    
    static var previews: some View {
        LoginView(loggedIn: $loggedIn, logIn: $logIn, signUp: $signUp, email: $email, password: $password)
    }
}

struct LoginButton: ButtonStyle {
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

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}

