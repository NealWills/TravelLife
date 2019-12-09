
import Foundation
import UIKit

public struct App {
    
    public struct Screen {
        static let width: CGFloat = UIScreen.main.bounds.width
        static let height: CGFloat = UIScreen.main.bounds.height
        static let size = CGSize.init(width: Screen.width, height: Screen.height)
        static let center = CGPoint.init(x: Screen.width / 2.0, y: Screen.height / 2.0)
        static let bounds = UIScreen.main.bounds
    }
    
    public struct Keyboard {
        
        static let width: CGFloat = UIScreen.main.bounds.width
        static var height: CGFloat {
            get {
                switch CurrentPhone.type {
                case .Not:
                    break
                case .IphoneSe:
                    return 253
                case .Iphone8:
                    return 258
                case .Iphone8P:
                    return 271
                case .Iphone11Max:
                    return 333
                case .Iphone11Pro:
                    return 344
                default:
                    break
                }
                return 10
            }
        }
        
    }
    
    
    
    public struct CurrentPhone {
        static let type: Phone.type = Phone.getType()
    }
    
    public struct CurrentPad {
        static let type: Pad.type = Pad.getType()
    }
    
    public struct StatusBar {
        static let width: CGFloat = UIScreen.main.bounds.width
        static let height: CGFloat = App.CurrentPhone.type.rawValue <= 4 ? 20 : 44
    }
    
    public struct NavigationBar {
        static let width: CGFloat = UIScreen.main.bounds.width
        static let height: CGFloat = 44
    }
    
    public struct Tabbar {
        static let width: CGFloat = UIScreen.main.bounds.width
        static let height: CGFloat = 49
    }

    public struct BottomBar {
        static let width: CGFloat = UIScreen.main.bounds.width
        static let height: CGFloat = App.CurrentPhone.type.rawValue <= 4 ? 0 : 20
    }
    
    
   
}
