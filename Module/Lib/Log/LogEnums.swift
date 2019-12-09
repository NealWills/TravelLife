//
//  File.swift
//  
//
//  Created by Neal on 2019/11/3.
//

import Foundation

public enum Level: Int {
    case Trace = 0
    case Debug = 1
    case Info = 2
    case Warning = 3
    case Error = 4
}

public enum Open {
    case Open, Close
}

public enum ApiMethod {
    case POST, GET, Delete
}

public enum ApiProcess {
    case Request, Response
}

struct logMark {
    
    var Trace = ""
    
    var Debug = ""
    
    var Info = ""
    
    var Warning = ""
    
    var Error = ""
    
    init(markTrace: String?=nil, markDebug: String?=nil, markInfo: String?=nil, markWarning: String?=nil, markError: String?=nil) {
        
        if markTrace != nil {
            self.Trace = markTrace!
        }
        
        if markDebug != nil {
            self.Debug = markDebug!
        }
        
        if markInfo != nil {
            self.Info = markInfo!
        }
        
        if markWarning != nil {
            self.Warning = markWarning!
        }
        
        if markError != nil {
            self.Error = markError!
        }
    
    }

}
