//
//  ImageIconView.swift
//  spotify-c
//
//  Created by Linder Anderson Hassinger Solano    on 27/05/23.
//

import SwiftUI

struct ImageIconView: View {
    
    var icon: String = ""
    
    var body: some View {
        Image(systemName: icon)
            .foregroundColor(.white)
            .font(.system(size: 22, weight: .black))
    }
}

struct ImageIcon_Previews: PreviewProvider {
    static var previews: some View {
        ImageIconView()
    }
}
