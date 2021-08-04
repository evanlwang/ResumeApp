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
                        .padding(.horizontal, 8)
                        
                        // Abstract as component
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Pictures")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.leading, 8)
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                
                                HStack(spacing: 1) {
                                    ForEach(0..<5) { item in
                                        PictureItem()
                                            .padding(.horizontal, 8)
                                    }
                                }
                            }
                        }
                        
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("My Music")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.leading, 8)
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                
                                HStack(spacing: 1) {
                                    ForEach(0..<5) { item in
                                        PictureItem()
                                            .padding(.horizontal, 8)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

struct Hobby: Identifiable {
    let id = UUID()
    let name: String
    let image: String
}

struct Picture: Identifiable {
    let id = UUID()
    let image: String
    let title: String
    let description: String
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
