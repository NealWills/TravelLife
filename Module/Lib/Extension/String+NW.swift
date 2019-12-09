//
//  String+NW.swift
//  SQLite
//
//  Created by Neal on 2019/11/7.
//  Copyright © 2019 Neal. All rights reserved.
//

import Foundation

extension String {
    subscript(_ range: Range<Int>) -> String {
        let sub1 = self.prefix(range.endIndex)
        let str1 = String.init(sub1)
        let sub2 = str1.suffix(range.endIndex - range.startIndex)
        
        return String.init(sub2)
    }
    
    var hexInt: Int! {
        get {
            switch self.uppercased() {
            case "0":
                return 0
            case "1":
                return 1
            case "2":
                return 2
            case "3":
                return 3
            case "4":
                return 4
            case "5":
                return 5
            case "6":
                return 6
            case "7":
                return 7
            case "8":
                return 8
            case "9":
                return 9
            case "A":
                return 10
            case "B":
                return 11
            case "C":
                return 12
            case "D":
                return 13
            case "E":
                return 14
            case "F":
                return 15
            default:
                return 0
            }
        }
    }
    
}
