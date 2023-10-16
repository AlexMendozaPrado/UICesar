//
//  Messages.swift
//  SocialConnect
//
//  Created by Pedro Alonso Moreno Salcedo on 12/10/23.
//

import SwiftUI

struct MessagesView: View {
    var body: some View {
        VStack{
            ScrollView{
                ForEach(0..<9){ _ in
                    MessageCell()
                    
                }
            }
        }
    }
}

#Preview {
    MessagesView()
}
