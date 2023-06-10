//
//  TextFieldView.swift
//  spotify-c
//
//  Created by Alumno on 3/06/23.
//

import SwiftUI

struct TextFieldView: View {
    @Binding var value: String 
    var placeHolder: String = ""
    var isSecure: Bool = false
    var keyboardType: UIKeyboardType = .default
    var body: some View {
        ZStack(alignment: .leading) {
            if value.isEmpty {
                TextView(text: placeHolder, color: .white.opacity(0.7), size: 16, weight: .regular)
            }
            if isSecure {
                SecureField("", text: $value)
                    .foregroundColor(.white)
            } else {
                TextField("", text: $value)
                    .foregroundColor(.white)
                    .keyboardType(keyboardType)
            }
        }
        .padding()
        .overlay {
            RoundedRectangle(cornerRadius: 24)
                .stroke(.gray.opacity(0.2), lineWidth: 1)
        }
    }
}

//struct TextFieldView_Previews: PreviewProvider {
 //   static var previews: some View {
   //     TextFieldView()
//    }
//}
