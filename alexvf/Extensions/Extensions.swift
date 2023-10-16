//
//  Extensions.swift
//  alexvf
//
//  Created by Alumno on 14/10/23.
//

import UIKit
import SwiftUI
extension UIApplication {
    func endEditing(){
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil,from : nil , for: nil)
    }
}

extension View {
    func getRect() -> CGRect {
        
        return UIScreen.main.bounds
        
    }
    
}
