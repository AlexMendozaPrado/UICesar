
//  CreateTweetView.swift
//  SocialConnect
//
//  Created by Pedro Alonso Moreno Salcedo on 12/10/23.
//

import SwiftUI

struct CreateTweetView: View {
    @State var text = ""
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    
                }, label: {
                    Text("Cancelar")
                })
                Spacer()
                Button(action: {
                    
                }, label: {
                    Text("Publicar").padding()
                })
                .background(Color("bg"))
                .foregroundColor(.white)
                .clipShape(Capsule())
            }
            MultilineTextField(text: $text)
            
        }
        .padding()
    }
}
#if DEBUG
struct CreateTweetView_Previews: PreviewProvider {
    static var previews: some View {
        CreateTweetView()

        
    }
}
#endif
