//
//  Feed.swift
//  SocialConnect
//
//  Created by Pedro Alonso Moreno Salcedo on 12/10/23.
//

import SwiftUI

struct Feed: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            VStack(spacing: 18){
                TweetCellView(tweet: "Hi there", tweetImage: "post")
                Divider()
                ForEach(1...20, id: \.self) { _ in
                    TweetCellView(tweet: "alex")
                    Divider()
                    
                }
            }
            .padding(.top)
            .padding(.horizontal)
            .zIndex(0)
            })
      
    }
}
                   

#Preview {
    Feed()
}
