//
//  AppSate.swift
//  spotify-c
//
//  Created by Alumno on 3/06/23.
//

import Foundation
class AppSate:ObservableObject{
    static let shared: AppSate = AppSate()
    enum AppScreens{
        case launch
        case SingIn
        case main
    }
    
    @Published var currentScreen: AppScreens = .launch
}
