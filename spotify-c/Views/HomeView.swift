//
//  HomeView.swift
//  spotify-c
//
//  Created by Linder Anderson Hassinger Solano    on 27/05/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color("Dark").ignoresSafeArea()
            
            ScrollView {
                VStack(alignment: .leading, spacing: 30) {
                    HStack(spacing: 15) {
                        TextView(text: "Good morning")
                        Spacer()
                        ImageIconView(icon: "bell")
                        ImageIconView(icon: "clock")
                        ImageIconView(icon: "gear")
                    }
                    TextView(text: "Recently played")
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            RowItemView(image: "liked", text: "Liked Songs")
                            RowItemView(image: "michael", text: "Dangerous")
                            RowItemView(image: "selena", text: "For you")
                            RowItemView(image: "liked", text: "Liked Songs")
                            RowItemView(image: "michael", text: "Dangerous")
                            RowItemView(image: "selena", text: "For you")
                        }
                    }
                    TextView(text: "To get you started")
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 15){
                            RowItemView(image: "justin",
                                        text: "Justin Bieber, Michael, Dua Lipa and more, Dua Lipa, Justin Bieber", height:144)
                            RowItemView(image: "drake",
                                        text:"Drake, Michael, Dua Lipa and more, Michael, Dua Lipa", height:144 )
                        }
                        
                    }
                }
            }
            .padding()
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
