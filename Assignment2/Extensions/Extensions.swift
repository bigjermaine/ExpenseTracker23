//
//  Extensions.swift
//  Assignment2
//
//  Created by Apple on 28/09/2022.
//

import SwiftUI

extension Date {
    func formatDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        dateFormatter.setLocalizedDateFormatFromTemplate("MMMM d, yyyy")
        return dateFormatter.string(from: self)
    }
       func formatDate2() -> String {
        let dateFormatter = DateFormatter()
       dateFormatter.dateFormat = "MMMM d, yyyy"
       dateFormatter.setLocalizedDateFormatFromTemplate("yyyy-MM-dd'T'HH:mm:ss.SSSZ")
        return dateFormatter.string(from: self)
   }
    
}
extension View {
    @ViewBuilder func `if`<Content: View>(_ condition: Bool, transform: (Self) -> Content) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
}
