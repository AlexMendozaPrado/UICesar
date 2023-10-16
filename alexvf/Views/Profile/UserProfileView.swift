//
//  ProfileView.swift
//  alexvf
//
//  Created by Alumno on 15/10/23.
//

import SwiftUI

struct UserProfileView: View {
    @State var offset : CGFloat = 0
    @State var titleOffset: CGFloat = 0
    @State var currentTab = "Tweets"
    @State var tabBarOffset: CGFloat = 0
    @Namespace var animation
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(spacing : 15){
                GeometryReader{proxy -> AnyView in
                    let minY = proxy.frame(in: .global).minY
                    
                    DispatchQueue.main.async {
                        self.offset = minY
                        
                    }
                  
                    return AnyView(
                        ZStack{
                            Image("banner")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame( width : getRect().width, height : minY  > 0 ? 180 + minY: 180, alignment : .center)
                                .cornerRadius(0)
                           
                            BlueView()
                                .opacity(blueViewOpacity())
                            VStack( spacing : 5 , content : {
                                Text("alex")
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                
                                Text("150 publicaciones ")
                                   .foregroundColor(.white)
                                
                            })
                            .offset(y: 120)
                            .offset(y : titleOffset > 100 ? 0 : -getTitleOffset())
                            .opacity(titleOffset < 100 ? 1 : 0 )
                        }
                            .clipped()
                            .frame( height : minY > 0 ? 180 +  minY : nil )
                            .offset(y : minY > 0 ? -minY : -minY < 80 ? 0 : -minY - 80 )
                    )
                }
                .frame(height : 180 )
                .zIndex(1)
                
                VStack{
                    HStack{
                        Image("logo")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width : 75, height : 75)
                            .clipShape(Circle())
                            .padding(8)
                            .background(Color.white)
                        
                            .offset(y: offset < 0 ? getOffset() - 20 : -20)
                            .scaleEffect(getScale())
                        Spacer()
                        Button(
                            action : {
                                
                            }, label: {
                                Text("Editar perfil ")
                                    .foregroundColor(.blue)
                                    .padding(.vertical,10)
                                    .padding(.horizontal)
                                    .background(Capsule().stroke(Color.blue, lineWidth: 1.5))
                                
                                
                            })
                    }
                    .padding(.top, -25)
                    .padding(.bottom , -10 )
                    
                    VStack (alignment: .leading, spacing : 8, content : {
                        Text("alex")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.primary)
                        Text("@alex_menpra ")
                            .foregroundColor(.gray)
                        Text("Solo se que no se nada ")
                        HStack(spacing : 5 , content : {
                            Text("10")
                                .foregroundColor(.primary)
                                .fontWeight(.semibold)
                            
                            Text("Seguidores")
                                .foregroundColor(.gray)
                            
                            Text("15")
                                .foregroundColor(.primary)
                                .fontWeight(.semibold)
                            
                            Text("Siguiendo")
                                .foregroundColor(.gray)
                                .padding(.leading, 10)
                        })
                        
                    })
                    
                    .overlay(
                        GeometryReader{
                            proxy -> Color in
                            let minY = proxy.frame(in : .global).minY
                            DispatchQueue.main.async{
                                self.titleOffset = minY
                            }
                            return Color.clear
                            
                        }
                            .frame( width : 0, height : 0),alignment : .top)
                    VStack (spacing : 0 , content:{
                        ScrollView(.horizontal, showsIndicators: false ,content: {
                            HStack(spacing: 0 , content :{
                                TabButtons(title: "Tweets", currentTab: $currentTab, animation: animation)
                                TabButtons(title: "Tweets & likes", currentTab: $currentTab, animation: animation)
                                TabButtons(title: "Media", currentTab: $currentTab, animation: animation)
                                TabButtons(title: "Likes", currentTab: $currentTab, animation: animation)
                            })
                        })
                        Divider()
                    } )
                    .padding(.top, 30)
                    .background(Color.white)
                    .offset(y: tabBarOffset < 90 ? -tabBarOffset + 90 : 0)
                    .overlay(
                        GeometryReader{ proxy -> Color in
                            let minY = proxy.frame(in: .global).minY
                            DispatchQueue.main.async {
                                self.tabBarOffset = minY
                            }
                            return Color.clear
                            
                        }
                            .frame(width: 0, height: 0)
                        , alignment: .top
                    )
                    .zIndex(1)
                    VStack(spacing: 18, content: {
                        TweetCellView(tweet : "ingreacion y se guridad", tweetImage: "post")
                        Divider()
                        ForEach(0..<20, id: \.self){ _ in
                            TweetCellView(tweet: "hola")
                            Divider()
                            
                        }
                    })
                    .padding(.top)
                    .zIndex(0)
                }
                .padding(.horizontal)
                .zIndex(-offset > 80 ? 0 : 1)
              
            }
        }
        .ignoresSafeArea(.all, edges: .top)
    }
    func blueViewOpacity() -> Double {
        let progress = -(offset + 80 ) / 150
        return Double( -offset > 80 ? progress : 0)
        
    }
    func getTitleOffset() -> CGFloat {
        let progress = 20 / titleOffset
        let offset = 60 * (progress > 0 && progress <= 1 ? progress : 1)
        return offset
       
    }
    func getOffset() -> CGFloat {
        let progress = (-offset / 80) * 20
        return progress <= 20 ? progress : 20
    }
    func getScale() -> CGFloat {
        let progress = -offset / 80
        let  scale = 1.8 - (progress < 1.0 ? progress : 1)
        return  scale < 1 ? scale : 1
    }
    
}
#Preview {
    UserProfileView()
}
