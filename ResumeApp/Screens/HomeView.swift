//
//  ContentView.swift
//  ResumeApp
//
//  Created by Evan Wang on 4/22/21.
//

import SwiftUI

struct HomeView: View {
    init() {
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().barTintColor = UIColor(Color("TabViewGray"))
    }
    
    var body: some View {
        TabView {
            AboutView()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("About")
                }
            ResumeView()
                .tabItem {
                    Image(systemName: "doc.text.fill")
                    Text("Resume")
                }
            ExperienceView()
                .tabItem {
                    Image(systemName: "book.fill")
                    Text("Expereince")
                }
        }
        .accentColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
      
    }
}
