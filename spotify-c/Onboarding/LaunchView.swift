//
//  LaunchView.swift
//  spotify-c
//
//  Created by Alumno on 3/06/23.
//

import SwiftUI

struct LaunchView: View {
    @StateObject var launchviewmodel = LaunchViewModel()
    
    var body: some View {
        ZStack{
        Color("Dark")
                .ignoresSafeArea()
            Image("logo")
                .resizable()
                .frame(width: 150, height: 150)
                .padding(.bottom, 26)
        }
    }
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
    }
}
