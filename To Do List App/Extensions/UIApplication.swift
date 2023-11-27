//
//  UIApplication.swift
//  To Do List App
//
//  Created by Kazi Fahim Tahmid on 25/11/23.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
