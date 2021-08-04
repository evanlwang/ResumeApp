//
//  LinkBubbleItem.swift
//  ResumeApp
//
//  Created by Evan Wang on 4/26/21.
//

import SwiftUI

struct LinkBubbleItem: View {
    var name: String
    // Make into button, on click send to parameter link
    var body: some View {
        Text(name)
            .font(.system(size: 14))
            .foregroundColor(.white)
            .fontWeight(.bold)
            .frame(width: 110, height: 33)
            .background(Color("SpotifyGreen"))
            .cornerRadius(50)
    }
}

struct LinkBubbleItem_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("ScreenGray")
            LinkBubbleItem(name: "Link Bubble")
        }
        .ignoresSafeArea()
    }
}
