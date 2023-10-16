//
//  SearchUserCell.swift
//  alexvf
//
//  Created by Alumno on 14/10/23.
//

import SwiftUI

struct SearchUserCell: View {
    var body: some View {
        HStack{
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 44, height: 44)
                .clipShape(Circle())
            VStack{
                Text("Alex")
                    .fontWeight(.heavy)
                Text("@Alex")
            }
            Spacer(minLength: 0 )
        }
    }
}

#Preview {
    SearchUserCell()
}
