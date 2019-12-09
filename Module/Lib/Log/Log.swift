
public struct Log {
    
    static public var open: Open! {
        set {
            LogManager.open = newValue
        }
        get {
            return LogManager.open
        }
    }
    
    static public var minimunLevel: Level! {
        set {
            LogManager.minimunLevel = newValue
        }
        get {
            return LogManager.minimunLevel
        }
    }
    
}

extension Log {
    
    static func setOpen(_ open: Open) {
        LogManager.open = open
    }
    
    static func setMinimunLevel(_ level: Level) {
        LogManager.minimunLevel = level
    }
    
}

extension Log {
    
    static public func setMark(markTrace: String?=nil, markDebug: String?=nil, markInfo: String?=nil, markWarning: String?=nil, markError: String?=nil) {
        LogManager.setMark(markTrace: markTrace, markDebug: markDebug, markInfo: markInfo, markWarning: markWarning, markError: markError)
    }
    
}

extension Log {
    
    static public func Log(_ items: Any..., level: Level?=nil, fileName: String = #file, line: Int = #line) {

        LogManager.Log(items, fileName: fileName, line: line)
    }
    
}

extension Log {

    static public func Trace(_ items: Any..., fileName: String = #file, line: Int = #line) {
    
        LogManager.LevelLog(items, fileName: fileName, line: line, level: .Trace)
    }

    static public func Debug(_ items: Any..., fileName: String = #file, line: Int = #line) {
        
        LogManager.LevelLog(items, fileName: fileName, line: line, level: .Debug)
    }

    static public func Info(_ items: Any..., fileName: String = #file, line: Int = #line) {
        
        LogManager.LevelLog(items, fileName: fileName, line: line, level: .Info)
    }

    static public func Warning(_ items: Any..., fileName: String = #file, line: Int = #line) {
        
        LogManager.LevelLog(items, fileName: fileName, line: line, level: .Warning)
    }

    static public func Error(_ items: Any..., fileName: String = #file, line: Int = #line) {
        
        LogManager.LevelLog(items, fileName: fileName, line: line, level: .Error)
    }
    
}

extension Log {
    
    static public func Api(api: String, method: ApiMethod, process: ApiProcess, items: Any..., level: Level?=nil) {
        
        LogManager.API(api: api, method: method, process: process, items, level: level)
    }
    
}



