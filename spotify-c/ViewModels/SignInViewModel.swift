//
//  SignInViewModel.swift
//  spotify-c
//
//  Created by Alumno on 10/06/23.
//

import Foundation
import FirebaseAuth

class SignInViewModel:ObservableObject{
    var appState: AppSate = .shared
    func signIn(email:String,password:String){
        Auth.auth().signIn(withEmail: email, password: password){
            authResult, error in
            if error != nil{
                return
            }
        }
    }
    func signUp(email:String, password:String){
        Auth.auth().createUser(withEmail: email, password: password){
            authResult, error in
            if error != nil{
                return
            }
            self.appState.currentScreen = .main
        }
    }
}
