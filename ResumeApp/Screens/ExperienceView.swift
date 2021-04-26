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
            
            Text("Experience")
                .foregroundColor(.white)
        }.ignoresSafeArea()
    }
}

struct ExperienceView_Previews: PreviewProvider {
    static var previews: some View {
        ExperienceView()
    }
}
