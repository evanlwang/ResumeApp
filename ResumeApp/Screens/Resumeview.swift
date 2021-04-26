//
//  Resumeview.swift
//  ResumeApp
//
//  Created by Evan Wang on 4/22/21.
//

import SwiftUI

struct ResumeView: View {
    var body: some View {
        ZStack {
            Color("ScreenGray")
            
            Text("Resume")
                .foregroundColor(.white)
        }.ignoresSafeArea()
    }
}

struct ResumeView_Previews: PreviewProvider {
    static var previews: some View {
        ResumeView()
    }
}
