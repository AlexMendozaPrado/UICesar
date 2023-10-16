//
//  BlurView.swift
//  alexvf
//
//  Created by Alumno on 15/10/23.
//

import SwiftUI

struct BlueView : UIViewRepresentable {
    
    func updateUIView(_ uiView : UIViewType, context : Context) {
        
    }
    
    
    
    func makeUIView(context : Context) -> UIVisualEffectView{
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemChromeMaterialDark))
        return view
        
    }
   
}
