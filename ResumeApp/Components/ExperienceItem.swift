//
//  ExperienceItem.swift
//  ResumeApp
//
//  Created by Evan Wang on 7/30/21.
//

import SwiftUI

struct Experience {
    let id = UUID()
    let image: String
    let company: String
    let position: String
    let date: String
    let track: String
}

struct ExperienceItem: View {
    let experience: Experience
    
    var body: some View {
        return HStack(spacing: 0) {
            Image(experience.image)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 65, height: 65, alignment: .leading)
                HStack {
                    VStack(alignment: .leading) {
                        Text(experience.company)
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .font(.system(size: 20))
                            .padding(.leading, 10)
                        HStack {
                            
                        }
                        Text("\(experience.position) - \(experience.date)")
                            .foregroundColor(.white)
                            .padding(.leading, 10)
                    }
                    
                    Spacer()
                }
        }
        .frame(width: UIScreen.main.bounds.width)
        .padding(.leading, 20)
        .padding(.horizontal, 10)
    }
}

struct ExperienceItem_Previews: PreviewProvider {
    static let ExperienceData = [Experience(image: "Yorushika", company: "WillowTree", position: "iOS Engineer Intern", date: "Summer 2021", track: "mp3")]
    static var previews: some View {
        ZStack {
            Color.black
            ExperienceItem(experience: ExperienceData[0])
        }
        .ignoresSafeArea()
    }
}
