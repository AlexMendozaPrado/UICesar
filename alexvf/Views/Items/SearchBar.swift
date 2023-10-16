//
//  SearchBar.swift
//  alexvf
//
//  Created by Alumno on 14/10/23.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text : String  
    @Binding var isEditing : Bool
    var body: some View {
        HStack{
            TextField("Search Twitter", text : $text)
                .padding(8)
                .padding(.horizontal,25)
                .background(Color(.systemGray6))
                .cornerRadius(20)
                .overlay(
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .frame(minWidth:0,maxWidth: .infinity, alignment: .leading)
                    })
            Button(action: {
                isEditing = false
                text = ""
                UIApplication.shared.endEditing()
            }, label: {
                Text("Cancel")
                    .foregroundColor(.black)
                    .padding(.trailing, 8)
                    .transition(.move(edge: .trailing))
                    .animation(.default)
           })
        }
                .onTapGesture{
                    isEditing = true
                   
               
      }
        
    }
}


