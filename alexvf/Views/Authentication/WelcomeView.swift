//
//  WelcomeView.swift
//  alexvf
//
//  Created by Alumno on 15/10/23.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack {
            HStack{
                Spacer(minLength : 0 )
                Image("Twitter")
                    .resizable()
                    .scaledToFill()
                    .padding(.trailing)
                    .frame(width: 20, height: 20)
                
                Spacer(minLength : 0 )

            }
            Text("Registrate para obtener la ayuda que necesitas!")
                .font(.system(size : 30, weight: .heavy, design: .default))
                .frame(width: (getRect().width * 0.9), alignment: .center )
            Spacer(minLength: 0)
            VStack(alignment: .center, spacing : 10, content : {
                Button(action: {
                    Text("Registrate con Google")
                    
                }, label : {
                    HStack(spacing : -4, content :{
                        Text("")
                        Image("google")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                        
                        Text("Continua con  Google ")
                            .fontWeight(.bold)
                            .font(.title3)
                            .foregroundColor(.black)
                            .padding()
                        
                        
                    } )
                    .overlay(
                        RoundedRectangle(cornerRadius: 36)
                            .stroke(Color.black, lineWidth: 1)
                            .opacity(0.3)
                            .frame(width: 320, height: 60 , alignment: .center)
                    )
                    
                })
                
                
                Button(action: {
                    Text("Registrate con Apple")
                    
                }, label : {
                    HStack(spacing : -4, content :{
                        Text("")
                        Image("apple")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                        
                        Text("Continua con Apple ")
                            .fontWeight(.bold)
                            .font(.title3)
                            .foregroundColor(.black)
                            .padding()
                        
                        
                    } )
                    .overlay(
                        RoundedRectangle(cornerRadius: 36)
                            .stroke(Color.black, lineWidth: 1)
                            .opacity(0.3)
                            .frame(width: 320, height: 60 , alignment: .center)
                    )
                    
                })
                HStack{
                    Rectangle()
                        .foregroundColor(.gray)
                        .opacity(0.3)
                        .frame(width : (getRect().width * 0.35), height: 1)
                    
                    Text(" O  con: ")
                        .foregroundColor(.gray)
                    Rectangle()
                        .foregroundColor(.gray)
                        .opacity(0.3)
                        .frame(width : (getRect().width * 0.35), height: 1)
                    
                }
                RoundedRectangle(cornerRadius: 36)
                    .foregroundColor(Color(red:29/255 , green: 161/255, blue : 242/255))
                    .frame(width: 320, height: 60 , alignment: .center)
                    .overlay(
                    Text( " Registra como OSC ")
                        .fontWeight(.bold)
                        .font(.title3)
                        .foregroundColor(.white)
                        .padding()

                    )
                
                
            })
            .padding()
            VStack(alignment: .leading, content:{
                VStack{
                    Text("Al registrarte , aceptas nuestros ") +
                         Text(" terminos")
                        .foregroundColor(Color(red:29/255 , green: 161/255, blue : 242/255)) +
                    Text("y politica de privacidad")
                   .foregroundColor(Color(red:29/255 , green: 161/255, blue : 242/255))
                }
                .padding(.bottom)
                HStack(spacing: 2) {
                    Text("Tienes cuenta de OSc?")
                    Text("Ingresa como Osc") //boton de login
                        .foregroundColor(Color(red:29/255 , green: 161/255, blue : 242/255))

                    
            
                }
            } )
        }
    }
}

#Preview {
    WelcomeView()
}
