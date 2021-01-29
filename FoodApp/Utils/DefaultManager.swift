//
//  DefaultManager.swift
//  FoodApp
//
//  Created by Angel Luis Bayon Romero on 14/11/2020.
//

import Foundation
import UIKit

class DefaultManager: NSObject {
    #if LOC
    static let environementDefault: Environement = Environement.LOC
    #else
    static let environementDefault: Environement = Environement.PRO
    #endif
    
    static func getBaseUrl() -> String {
        switch self.environementDefault {
        case .LOC:
            return "https://www.themealdb.com/api/json/v1/1"
        case .PRO:
            return "https://www.themealdb.com/api/json/v1/1"
        }
    }
    
    static func print(_ items: Any..., separator: String = " ", terminator: String = "\n") {
        var idx = items.startIndex
        let endIdx = items.endIndex
        
        repeat {
            Swift.print(items[idx], separator: separator, terminator: idx == (endIdx - 1) ? terminator : separator)
            idx += 1
        }
            while idx < endIdx
        
    }
}
