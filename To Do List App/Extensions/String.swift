//
//  String.swift
//  To Do List App
//
//  Created by Kazi Fahim Tahmid on 25/11/23.
//

import Foundation

extension String {
    
    
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
    
}
