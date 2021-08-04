//
//  HobbieItem.swift
//  ResumeApp
//
//  Created by Evan Wang on 4/25/21.
//

import SwiftUI

struct HobbieItem: View {
    var hobby: Hobby
    
    var body: some View {
        return HStack(spacing: 0) {
            Image(hobby.image)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 55, height: 55, alignment: .leading)
            ZStack {
                Color("TabViewGray")
                HStack {
                    Text(hobby.name)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding(.leading, 10)
                    Spacer()
                }
            }
            .frame(width: 130, height: 50)
        }
        .cornerRadius(5)
    }
}

struct HobbieItem_Previews: PreviewProvider {
    static let HobbyData = [Hobby(name: "Guitar", image: "Yorushika")]
    static var previews: some View {
        ZStack {
            Color("ScreenGray")
            HobbieItem(hobby: HobbyData[0])
        }
        .ignoresSafeArea()
    }
}
