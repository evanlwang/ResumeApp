//
//  AboutView.swift
//  ResumeApp
//
//  Created by Evan Wang on 4/22/21.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        
        let layout = [GridItem(), GridItem()]
        
        ZStack {
            Color("ScreenGray")
                .ignoresSafeArea()
            
            VStack {
                ScrollView(.vertical, showsIndicators: true) {
                    
                    VStack(spacing: 25) {
                        
                        VStack(alignment: .leading, spacing: 10) {
                            
                            HStack {
                                Text("Hobbies")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                
                                Spacer()
                                
                                // Implement
                                Image(systemName: "gear")
                                    .font(.title2)
                                    .foregroundColor(.white)
                            }

                            LazyVGrid(columns: layout) {
                                // Chage to data set
                                ForEach(HobbyData) { item in
                                    HobbieItem(hobby: item)
                                }
                            }
                        }
                        .padding(.horizontal, 13)
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Pictures")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                
                                HStack(spacing: 15) {
                                    ForEach(0..<5) { item in
                                        PictureItem()
                                    }
                                }
                            }
                        }
                        .padding(.leading, 13)
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("My Music")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                
                                HStack(spacing: 15) {
                                    ForEach(0..<5) { item in
                                        PictureItem()
                                    }
                                }
                            }
                        }
                        .padding(.leading, 13)
                    }
                }
            }
        }
    }
}

struct Hobby: Identifiable {
    var id = UUID()
    var name: String
    var image: String
}

struct Picture: Identifiable {
    var id = UUID()
    var image: String
    var title: String
    var description: String
}

let HobbyData = [
    Hobby(name: "Guitar", image: "GuitarImage"), Hobby(name: "Cooking", image: "CookingImage"),
    Hobby(name: "Basketball", image: "BasketballImage"), Hobby(name: "MMA", image: "MMAImage"),
    Hobby(name: "Comedy", image: "ComedyImage"), Hobby(name: "Anime", image: "AnimeImage")
]

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
