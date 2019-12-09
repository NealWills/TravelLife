//
//  PhoneType.swift
//  SQLite
//
//  Created by Neal on 2019/11/5.
//  Copyright © 2019 Neal. All rights reserved.
//

import Foundation

import UIKit

struct Phone {
    
    enum type: Int {
        case Not = 0
        case Iphone4s = 1
        case IphoneSe = 2
        case Iphone8 = 3
        case Iphone8P = 4
        case Iphone11Pro = 5
        case Iphone11Max = 6
    }
    
    struct typeSize {
        
        static let Iphone4s = CGSize.init(width: 320.0, height: 480.0)
        
        static let IphoneSe = CGSize.init(width: 320.0, height: 568.0)
        
        static let Iphone8 = CGSize.init(width: 375.0, height: 667.0)
        
        static let Iphone8P = CGSize.init(width: 414.0, height: 736.0)
        
        static let Iphone11Pro = CGSize.init(width: 375, height: 812.0)
        
        static let Iphone11Max = CGSize.init(width: 414, height: 896.0)
        
    }
    
    static func getType() -> type {
        let ScreenSize = CGSize.init(width: App.Screen.width, height: App.Screen.height)
        
        if ScreenSize == typeSize.Iphone4s {
            return .Iphone4s
        }
        
        if ScreenSize == typeSize.IphoneSe {
            return .IphoneSe
        }
        
        if ScreenSize == typeSize.Iphone8 {
            return .Iphone8
        }
        
        if ScreenSize == typeSize.Iphone8P {
            return .Iphone8P
        }
        
        if ScreenSize == typeSize.Iphone11Max {
            return .Iphone11Max
        }
        
        if ScreenSize == typeSize.Iphone11Pro {
            return .Iphone11Pro
        }
        
        return .Not
    }
    
    
}

struct Pad {
    enum type {
        case Not
        case IpadPro97
        case IpadPro105
        case IpadPro129
        case IpadPro110Totol
    }
    
    struct typeSize {
        
        static let IpadPro97 = CGSize.init(width: 768.0, height: 1024.0)
        
        static let IpadPro105 = CGSize.init(width: 834.0, height: 1112.0)
        
        static let IpadPro129 = CGSize.init(width: 1024.0, height: 1366.0)
        
        static let IpadPro110Totol = CGSize.init(width: 834.0, height: 1194.0)

    }
    
    static func getType() -> type {
        let ScreenSize = CGSize.init(width: App.Screen.width, height: App.Screen.height)
        
        if ScreenSize == typeSize.IpadPro97 {
            return .IpadPro97
        }
        
        if ScreenSize == typeSize.IpadPro105 {
            return .IpadPro105
        }
        
        if ScreenSize == typeSize.IpadPro129 {
            return .IpadPro129
        }
        
        if ScreenSize == typeSize.IpadPro110Totol {
            return .IpadPro110Totol
        }
        
        return .Not
    }
}
