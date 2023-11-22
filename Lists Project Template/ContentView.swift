//
//  ContentView.swift
//  Lists Project Template
//
//  Created by [YOUR NAME GOES HERE].
//

import SwiftUI

struct ContentView: View {
    
    var articles = [Article(title: "M1: The Crab Nebula",
                            author: "By Tea Temim",
                            rating: 4,
                            excerpt: "The Crab Nebula is cataloged as M1, the first object on Charles Messier's famous 18th century list of things which are not comets. In fact, the Crab is now known to be a supernova remnant, debris from the death explosion of a massive star witnessed by astronomers in the year 1054.",
                            image: "M1-Webb"),
                    
                        Article(title: "Andromeda over the Alps",
                                author: "By Dzmitry Kananovich",
                                rating: 3,
                                excerpt: "Have you ever seen the Andromeda galaxy? Although M31 appears as a faint and fuzzy blob to the unaided eye, the light you see will be over two million years old, making it likely the oldest light you ever will see directly. The featured image captured Andromeda just before it set behind the Swiss Alps early last year.",
                                image: "Alps"),
                    
                        Article(title: "Creature Aurora Over Norway",
                                author: "By Ole C. Salomonsen",
                                rating: 5,
                                excerpt: "It was Halloween and the sky looked like a creature. Exactly which creature, the astrophotographer was unsure (but possibly you can suggest one). Exactly what caused this eerie apparition in 2013 was sure: one of the best auroral displays that year.",
                                image: "Aurora"),
                    
                        Article(title: "Annular Solar Eclipse over Utah",
                                author: "By MaryBeth Kiczenski",
                                rating: 2,
                                excerpt: "Part of the Sun disappeared earlier this month, but few people were worried. The missing part, which included the center from some locations, just went behind the Moon in what is known as an annular solar eclipse. Featured here is an eclipse sequence taken as the Moon was overtaking the rising Sun in the sky.",
                                image: "Utah"),
                    
                         Article(title: "Daytime Moon Meets Morning Star",
                                 author: "By Katarzyna Kaczmarczyk",
                                 rating: 3,
                                 excerpt: "Venus now appears as Earth's brilliant morning star, shining above the southeastern horizon before dawn. For early morning risers, the silvery celestial beacon rose predawn in a close pairing with a waning crescent Moon on Thursday, November 9.",
                                 image: "Katarzyna")]
    
    var body: some View {
        VStack {
            List(articles) { section in
                ScrollingView(section: section)
            }
        }
        .listStyle(.plain)
    }
}



#Preview {
    ContentView()
}

struct Article: Identifiable {
    var id = UUID()
    var title: String
    var author: String
    var rating: Int
    var excerpt: String
    var image: String
}

struct ScrollingView: View {
    
    var section: Article
    
    var body: some View {
        VStack {
            Image(section.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(7)
            
        
            HStack {
                Text(section.title)
                    .font(.system(size: 26, weight: .black, design: .rounded))
                    .multilineTextAlignment(.leading)
                
                
                Spacer()
            }
            .padding(.bottom, 0.5)
            
                
                
                
            HStack {
                Text(section.author.uppercased())
                    .font(.system(size: 16, weight: .thin))
                
                Spacer()
            }
            .padding(.bottom, 0.5)
            
            HStack {
                ForEach(0..<section.rating, id: \.self) {_ in
                    Text("⭐️")
                        .font(.system(size: 14))
                    
                }
                
                Spacer()
            }
            .padding(.bottom, 0.5)
            
            Text(section.excerpt)
                .font(.system(size: 16, weight: .thin))
                .multilineTextAlignment(.leading)
            
        }
        
    }
}
