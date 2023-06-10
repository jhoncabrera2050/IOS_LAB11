//
//  RowItemView.swift
//  spotify-c
//
//  Created by Linder Anderson Hassinger Solano    on 27/05/23.
//

import SwiftUI

struct RowItemView: View {
    var image: String = ""
    var text: String = ""
    var width: CGFloat = 114
    var height: CGFloat = 114
    var size: CGFloat = 12
    var align: HorizontalAlignment = .leading
    
    var body: some View {
        VStack(alignment: align) {
            Image(image)
                .resizable()
                .frame(width: width, height: height)
            TextView(text: text, size: size,width: width)
        }
    }
}

struct RowItemView_Previews: PreviewProvider {
    static var previews: some View {
        RowItemView()
    }
}
