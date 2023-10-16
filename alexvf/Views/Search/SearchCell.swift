//
//  SearchCell.swift
//  SocialConnect
//
//  Created by Pedro Alonso Moreno Salcedo on 13/10/23.
//

import SwiftUI

struct SearchCell: View {
    var tags = ""
    var tweets = ""

    var body: some View {
        VStack(alignment: .leading,spacing: nil, content: {
            Text("hello").fontWeight(.heavy)
            Text(tweets + "tweets").fontWeight(.light)
        })
    }
}

#Preview {
    SearchCell()
}
