//
//  ExperienceView.swift
//  ResumeApp
//
//  Created by Evan Wang on 4/22/21.
//

import SwiftUI

struct ExperienceView: View {
    var body: some View {
        ZStack {
            
            Color("ScreenGray")
                .ignoresSafeArea(.all)
            
            // Replace with TopNavigationBar
            VStack {
                HStack {
                    Image("Wang_Evan_Photo")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 33, height: 33)
                        .clipShape(Circle())
                    
                    Text("My Experiences")
                        .font(Font.system(size: 23, weight: .bold))
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    HStack(spacing: 15) {
                        Image(systemName: "magnifyingglass")
                            .font(Font.system(size: 26, weight: .light))
                        Image(systemName: "plus")
                            .font(Font.system(size: 28, weight: .light))
                    }
                    
                }
                .padding(.horizontal, 10)
                .frame(width: UIScreen.main.bounds.width)
                .foregroundColor(Color.white)

                                
                // Scroll View
                ScrollView(.vertical, showsIndicators: false) {
                    
                    ForEach(0..<ExpereinceData.count) {
                        ExperienceItem(experience: ExpereinceData[$0])
                    }
                }
                .background(Color.black)
            }
        }
    }
}

let ExpereinceData = [
    Experience(image: "Yorushika", company: "WillowTree", position: "iOS Engineer Intern", date: "Summer 2021", track: "mp3"),
    Experience(image: "Yorushika", company: "WillowTree", position: "iOS Engineer Intern", date: "Summer 2021", track: "mp3"),
    Experience(image: "Yorushika", company: "WillowTree", position: "iOS Engineer Intern", date: "Summer 2021", track: "mp3"),
    Experience(image: "Yorushika", company: "WillowTree", position: "iOS Engineer Intern", date: "Summer 2021", track: "mp3"),
    Experience(image: "Yorushika", company: "WillowTree", position: "iOS Engineer Intern", date: "Summer 2021", track: "mp3")
]

struct ExperienceView_Previews: PreviewProvider {
    static var previews: some View {
        ExperienceView()
    }
}
