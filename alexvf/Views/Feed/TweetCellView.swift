//
//  TweetCellView.swift
//  SocialConnect
//
//  Created by Pedro Alonso Moreno Salcedo on 13/10/23.
//

import SwiftUI

struct TweetCellView: View {
    var tweet : String
    var tweetImage: String?
    var body: some View {
        VStack {
            HStack(alignment: .top,spacing:10, content: {
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width:55,height: 55)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                VStack(alignment: .leading,spacing: 10, content: {
                    (
                    Text("Alex")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.primary)
                    + Text("@AlexMenpra")
                        .foregroundColor(.gray)
                    )
                    Text("Hi there")
                        .frame(maxHeight: 100 , alignment: .top)
                    
                    if let image = tweetImage{
                        GeometryReader{ proxy  in
                            Image(image)
                                .resizable()
                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                .frame(width:proxy.frame(in:.global).width,height: 250)
                                .cornerRadius(15)
                        }
                        .frame(height : 250)

                    }
                    
                })
            })
            HStack(spacing: 50, content: {
                Button(action: {
                    
                }, label: {
                    Image("Comments")
                        .resizable()
                        .frame(width: 16,height: 16)
                }).foregroundColor(.gray)
                Button(action: {
                    
                }, label: {
                    Image("Retweet")
                        .resizable()
                        .frame(width: 16,height: 16)
                }).foregroundColor(.gray)
                Button(action: {
                    
                }, label: {
                    Image("love")
                        .resizable()
                        .frame(width: 16,height: 16)
                }).foregroundColor(.gray)
                Button(action: {
                    
                }, label: {
                    Image("upload")
                        .resizable()
                        .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                        .frame(width: 16,height: 16)
                }).foregroundColor(.gray)
            })
            .padding(.top, 4)
        }
    }
}

#Preview {
    TweetCellView(tweet :"Hi there")
}
