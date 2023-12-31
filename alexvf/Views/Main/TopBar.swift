//
//  TopBar.swift
//  alexvf
//
//  Created by Alumno on 15/10/23.
//

import SwiftUI

struct TopBar: View {
    @Binding var x: CGFloat
    @State var width = UIScreen.main.bounds.width
    
    var body: some View {
        VStack{
            HStack{
                Button(action: {
                    withAnimation{
                        x = 0
                    }
                    x = 0
                }, label: { Image(systemName: "line.horizontal.3")
                        .font(.system(size: 24))
                        .foregroundColor(Color("bg"))
                    
                } )
                Spacer(minLength : 0 )
                Image("Twitter")
                    .resizable()
                    .scaledToFill()
                    .padding(.trailing)
                    .frame(width: 20 ,height: 20 )
                Spacer(minLength : 0 )

                
            }
            .padding()
            Rectangle()
                .frame(width : width, height: 1)
                .foregroundColor(.gray)
                .opacity(0.3)
        }
        .background(Color.white)
    }
}

