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
                .ignoresSafeArea()

            ScrollView(.vertical) {
                VStack(alignment: .leading, spacing: 15) {
                    HStack {
                        Text("Evan Wang")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        Spacer()
                    }
                    
                    
                    HStack {
                        LinkBubbleItem(name: "Email")
                        LinkBubbleItem(name: "GitHub")
                        LinkBubbleItem(name: "LinkedIn")
                    }
                    
                    VStack(alignment: .leading, spacing: 3) {
                        
                        // Abstract
                        Group {
                            Text("Education")
                                .font(.title2)
                                .fontWeight(.bold)
                            Text("Univeristy of Michigan - Ann Arbor")
                                .fontWeight(.bold)
                            VStack(alignment: .leading) {
                                Text("  - B.S. in Computer Science, expected May 2023")
                                Text("  - GPA: 3.62")
                            }
                            .font(.system(size: 15))
                        }
                        
                        Spacer()
                        
                        Group {
                            Text("Experience")
                                .font(.title2)
                                .fontWeight(.bold)
                            Text("WillowTree, ").bold() + Text("iOS Engineer Intern").bold()
                            Text("May 2021 - Aug 2021 | Charlottesville, VA")

                            VStack(alignment: .leading) {
                                Text("  - Built multiple native iOS screens for two major QSR client mobile apps using Swift, SwiftUI, Storyboard, R.Swift, SwiftyJSON, and PromisesSwift under standard MVC architecture.")
                                    
                                Text("  - Explored feasibility of integrating SwiftUI into one of the QSR clients, built a screen and UI component POC and presented findings and gave future recommendations to the entire engineering team.")
                                Text("  - something about communication and teamwork")
                                    
                            }
                            .font(.system(size: 15))
                        }

                        Spacer()
                        
                        Group {
                            Text("Honesti, ").bold() + Text("Software Engineer Intern").bold()
                            Text("Aug 2020 - Mar 2021 | Ann Arbor, MI")
                            VStack(alignment: .leading) {
                                Text("  - Developed exceptional UX design using React Native, Typescript, and CSS to determine back-end data to display, user navigation, gesture control, and custom styling.")
                                Text("  - Collaborated with back-end engineers to design and implement Firestore database architecture with long-term scalability.")
                                Text("  - Mentored new engineering team members on codebase setup, version control, and React Native fundamentals during the onboarding process.")
                            }
                            .font(.system(size: 15))
                        }
                        
                        Spacer()
                        
                        Group {
                            Text("Consentful Messages, ").bold() + Text("Student Researcher").bold()
                            Text("Sept 2020 - Jan 2021 | Ann Arbor, MI")
                            VStack(alignment: .leading) {
                                Text("  - Used Javascript, HTML, CSS, Twitter API, and Oauth.io to develop a custom secure Twitter Chrome extension overlay.")
                                Text("  - Researched Twitter API’s and worked with back-end engineers to apply Machine Learning algorithms that used account data to intelligently set custom filters that prevent unsolicited direct messages to Twitter users.")
                                Text("  - Designed Chrome extension tab overlay wireframes using Figma and CSS.")
                            }
                            .font(.system(size: 15))
                        }
                        
                        Spacer()
                        
                        Text("Tools and Skills")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Group {
                            VStack {
                                HStack {
                                    Text("SwiftUI")
                                    Spacer()
                                    Text("SwiftUI")
                                    Spacer()
                                    Text("SwiftUI")
                                    Spacer()
                                    Text("SwiftUI")
                                }
                                HStack {
                                    Text("SwiftUI")
                                    Spacer()
                                    Text("SwiftUI")
                                    Spacer()
                                    Text("SwiftUI")
                                    Spacer()
                                    Text("SwiftUI")
                                }
                            }
                        }
       
                    }
                    .foregroundColor(.white)
                    
                    
                }
                .padding(.horizontal, 15)
            }
            
            
            
        }
    }
}

struct ResumeView_Previews: PreviewProvider {
    static var previews: some View {
        ResumeView()
    }
}
