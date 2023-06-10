//
//  LaunchViewModel.swift
//  spotify-c
//
//  Created by Alumno on 3/06/23.
//

import Foundation
import FirebaseAuth
class LaunchViewModel: ObservableObject {
    var appState: AppSate = .shared
   //inicia cuando se instancia la clase
    
    init(){
        print("Estamos en lunch view")
        
        appState.currentScreen = Auth.auth().currentUser == nil
        ?.SingIn:.main
        
    }
}
