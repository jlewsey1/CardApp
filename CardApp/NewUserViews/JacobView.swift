//
//  JacobView.swift
//  CardApp
//
//  Created by Jacob Lewsey on 11/1/22.
//

import SwiftUI
import Firebase

struct JacobView: View {
    
    @Binding var loggedIn: Bool
    @Binding var logIn: Bool
    
    private var user = Auth.auth().currentUser
    private var userEmail = ""
    
    init(loggedIn: Binding<Bool>, logIn: Binding<Bool>) {
        
        self._loggedIn = loggedIn // beta 4
        self._logIn = logIn
        
        self.user = Auth.auth().currentUser
        self.userEmail = ""
        
        editEmail()
    }
    
    var body: some View {
        NavigationView {
            VStack{
                NavigationLink(destination: BoosterBoxView(), label: {
                    Text("Booster Boxes")
                        .padding()
                        .frame(minWidth: 250)
                        .foregroundColor(Color.black)
                })
                .border(Color.black, width: 1)
                .padding(3)
                .background(Color.white)
                .shadow(color: Color.green, radius: 6)
                
                NavigationLink(destination: PremiumCollectionView(), label: {
                    Text("Premium Collection Boxes")
                        .padding()
                        .frame(minWidth: 250)
                        .foregroundColor(Color.black)
                })
                .border(Color.black, width: 1)
                .padding(3)
                .background(Color.white)
                .shadow(color: Color.orange, radius: 6)
                
                
                NavigationLink(destination: EliteTrainerBoxView(), label: {
                    Text("Elite Traner Boxes")
                        .padding()
                        .frame(minWidth: 250)
                        .foregroundColor(Color.black)
                })
                .border(Color.black, width: 1)
                .padding(3)
                .background(Color.white)
                .shadow(color: Color.blue, radius: 6)
                
                NavigationLink(destination: AlternateArtBoxView(), label: {
                    Text("Alternate Art Boxes")
                        .padding()
                        .frame(minWidth: 250)
                        .foregroundColor(Color.black)
                })
                .border(Color.black, width: 1)
                .padding(3)
                .background(Color.white)
                .shadow(color: Color.red, radius: 6)
                
                NavigationLink(destination: MiscView(), label: {
                    Text("Miscellaneous")
                        .padding()
                        .frame(minWidth: 250)
                        .foregroundColor(Color.black)
                })
                .border(Color.black, width: 1)
                .padding(3)
                .background(Color.white)
                .shadow(color: Color.purple, radius: 6)
                
                NavigationLink(destination: CardViewSelector(), label: {
                    Text("Singles")
                        .padding()
                        .frame(minWidth: 250)
                        .foregroundColor(Color.black)
                })
                .border(Color.black, width: 1)
                .padding(3)
                .background(Color.white)
                .shadow(color: Color.yellow, radius: 6)
                
                Button("Sign Out"){
                    try? Auth.auth().signOut()
                    loggedIn.toggle()
                    logIn.toggle()
                }
                .buttonStyle(SignOutButton())
                .offset(y: 100)
                
            }
            .navigationTitle("\(self.userEmail)'s Page")
            .offset(y: -50)
            .background(
                Image("Background2")
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    .opacity(0.65)
                    .edgesIgnoringSafeArea(.all)
            )
        }
        .edgesIgnoringSafeArea(.all)
    }
    
    
    mutating func editEmail() {
        let user = Auth.auth().currentUser
        if user != nil {
            // User is signed in.
            // ...
            self.userEmail = user?.email ?? ""
            if let atRange = self.userEmail.range(of: "@") {
                self.userEmail.removeSubrange(atRange.lowerBound..<self.userEmail.endIndex)
            }
        }
    }
    
}
struct JacobView_Previews: PreviewProvider {
    @State static var loggedIn = true
    @State static var logIn = false
    
    static var previews: some View {
        JacobView(loggedIn: $loggedIn, logIn: $logIn).preferredColorScheme(.dark)
    }
}

struct SignOutButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame(minWidth: 250)
            .foregroundColor(Color.black)
            .frame(width: 200, height: 50)
            .border(.black, width: 1)
            .padding(3)
            .background(Color.white)
            .shadow(color: .black, radius: 3)
    }
}
