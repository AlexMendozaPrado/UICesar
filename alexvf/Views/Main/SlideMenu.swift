//
//  SlideMenu.swift
//  alexvf
//
//  Created by Alumno on 15/10/23.
//

import SwiftUI

struct SlideMenu: View {
    @State var show = false
    var menuButtons = ["Profile","Lists","Bookmarks","Moments"]
    var edges = UIApplication.shared.windows.first?.safeAreaInsets
    @State var width = UIScreen.main.bounds.width
    var body: some View {
        
        VStack{
            HStack(spacing : 0, content: {
                VStack(alignment: .leading, spacing : nil , content: {
                    
                    Image("logo")
                        .resizable()
                        .frame(width: 60, height: 60 )
                        .clipShape(Circle())
                    
                    HStack(alignment: .top, spacing: 12 , content :  {
                        VStack(alignment: .leading , spacing : 12 , content : {
                            Text("alex")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                            
                            Text("@Alex_Menpra")
                                .foregroundColor(.gray)
                            HStack(spacing : 20, content : {
                                FollowView(count : 8, title: "Following")
                                FollowView(count : 18, title: "Followers")
                            })
                            .padding(.top,10)
                            Divider()
                                .padding(.top, 10 )
                        })
                        
                        Spacer(minLength : 0 )
                        Button(action : {
                            withAnimation {
                                self.show.toggle()
                            }
                        }, label : {
                            Image(systemName: show ? "chevron.down":"chevron.up" )
                                .foregroundColor(Color("bg"))
                        })
                    })
                    VStack(alignment: .leading, content : {
                        ForEach(menuButtons, id : \.self){ item in
                            MenuButton(title: item )
                           
                        }
                        Divider()
                            .padding(.top)
                        Button(action: {
                            
                        }, label: {
                            MenuButton(title: "Yco Ads")
                        })
                        Divider()
                        Button(action: {
                            
                        }, label: {
                            MenuButton(title: "Settings and Privacy ")
                                .foregroundColor(.black)
                        })
                        .padding(.top,20)
                        Spacer(minLength : 0)
                        Divider()
                            .padding(.bottom)
                        
                        HStack{
                            Button(action: {
                                
                            }, label: {
                                Image("help")
                                    .renderingMode(.template)
                                    .resizable()
                                    .frame( width : 26, height : 26)
                                    .foregroundColor(Color("bg"))
                            })
                            Spacer(minLength: 0)
                            Image("barcode")
                                .renderingMode(.template)
                                .resizable()
                                .frame(width : 26, height: 26)
                                .foregroundColor(Color("bg"))
                        }
                        
                    })
                    .opacity(show ? 1 : 0 )
                    .frame(height: show ? nil : 0)
                    VStack(alignment: .leading, content : {  Button(action: {
                        
                    }, label: {
                        Text("crea una nueva cuenta ")
                            .foregroundColor(Color("bg"))
                        
                    })
                    
                    Button(action: {
                       
                   }, label: {
                       Text("Agrega una cuenta que ya existe  ")
                           .foregroundColor(Color("bg"))
                       
                   })
                    Spacer(minLength: 0)
                    
                })
                .opacity(!show ? 1 : 0 )
                .frame(height: !show ? nil : 0)
            })
                .padding(.horizontal, 20 )
                .padding(.top, edges!.top == 0 ? 15 : edges?.top)
                .padding(.bottom, edges!.bottom == 0 ? 15 
                         : edges? .bottom)
                .frame( width: width - 90 )
                .background(Color.white)
                .ignoresSafeArea(.all, edges: .vertical)
                
                Spacer(minLength : 0)
            })
        }
    }
}

#Preview {
    SlideMenu()
}
