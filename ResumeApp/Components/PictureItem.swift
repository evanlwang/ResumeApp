//
//  PictureItem.swift
//  ResumeApp
//
//  Created by Evan Wang on 4/25/21.
//

import SwiftUI

struct PictureItem: View {
    var body: some View {
        return VStack(alignment: .leading) {
            Image("Yorushika")
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 160, height: 160)
            .cornerRadius(10)
            Text("Place holder name")
                .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                .fontWeight(.bold)
            Text("Description")
                .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
        }
    }
}

struct PictureItem_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("ScreenGray")
            PictureItem()
        }
        .ignoresSafeArea()
    }
}
