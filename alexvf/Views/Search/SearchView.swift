//
//  SearchView.swift
//  alexvf
//
//  Created by Alumno on 14/10/23.
//

import SwiftUI

struct SearchView: View {
    @State var text = ""
    @State var isEditing = false
    
    var body: some View {
        VStack {
            SearchBar(text: $text, isEditing: $isEditing)
                .padding(.horizontal)
            
            if isEditing {
                List(0..<9) { _ in
                    SearchUserCell()
                }
            }
            else {
                List(0..<9) { i in
                    SearchCell(tags: "hello", tweets: String(i))
                }
            }
        }
    }
}





#Preview {
    SearchView()
}


