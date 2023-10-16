//
//  MenuItem.swift
//  alexvf
//
//  Created by Alumno on 15/10/23.
//

import SwiftUI

struct MenuButton: View {
    var title: String
    
    var body: some View {
        HStack(spacing : 15, content: {
            Image(title)
                .resizable()
                .renderingMode(.template)
                .frame(width: 24,height: 10)
                .foregroundColor(.gray)
            Text(title)
                .foregroundColor(.black)
            
            Spacer(minLength: 0)
        })
        .padding(.vertical,12 )
    }
}


