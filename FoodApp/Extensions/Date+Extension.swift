//
//  Date+Extension.swift
//  FoodApp
//
//  Created by Angel Luis Bayon Romero on 14/11/2020.
//

import Foundation

extension Date {
    func format(format: String) -> String {
        
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = format
        
        return dateFormatter.string(from: self)
    }
}
