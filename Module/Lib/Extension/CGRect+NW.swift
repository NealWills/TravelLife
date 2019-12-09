//
//  ECGRect.swift
//  SQLite
//
//  Created by Neal on 2019/11/5.
//  Copyright © 2019 Neal. All rights reserved.
//

import UIKit

extension CGRect {
    
    public var Width: CGFloat! {
        set {
            self.size = CGSize.init(width: newValue, height: self.size.height)
        }
        get {
            return self.size.width
        }
    }
    
    public var Height: CGFloat! {
        set {
            self.size = CGSize.init(width: self.size.width, height: newValue)
        }
        get {
            return self.size.height
        }
    }
    
    public var Leading: CGFloat! {
        set {
            self.origin = CGPoint.init(x: newValue, y: self.origin.y)
        }
        get {
            return self.origin.x
        }
    }
    
    public var Top: CGFloat! {
        set {
            self.origin = CGPoint.init(x: self.origin.x, y: newValue)
        }
        get {
            return self.origin.y
        }
    }
    
    public var Tailing: CGFloat! {
        set {
            self.origin = CGPoint.init(x: newValue - self.size.width, y: self.origin.y)
        }
        get {
            return self.origin.x + self.size.width
        }
    }
    
    public var Bottom: CGFloat! {
        set {
            self.origin = CGPoint.init(x: self.origin.x, y: newValue - self.size.height)
        }
        get {
            return self.origin.y + self.size.height
        }
    }
    
    public var destination: CGPoint! {
        set {
            self.origin = CGPoint.init(x: newValue.x - self.size.width, y: newValue.y - self.size.height)
        }
        get {
            return CGPoint.init(x: self.origin.x + self.size.width, y: self.origin.y + self.size.height)
        }
    }
    
    public var Center: CGPoint! {
        set {
            self.origin = CGPoint.init(x: newValue.x - self.size.width / 2.0, y: newValue.y - self.size.height / 2.0)
        }
        get {
            return CGPoint.init(x: self.origin.x + self.size.width / 2.0, y: self.origin.y + self.size.height / 2.0)
        }
    }
    
}

//MARK:- Origin to Destination
extension CGRect {
    
    /// Origin to Destination
    init(leading: CGFloat?=nil, top: CGFloat?=nil, tailing: CGFloat?=nil, bottom: CGFloat?=nil) {
        let leading = leading ?? 0
        let top = top ?? 0
        let tailing = tailing ?? 0
        let bottom = bottom ?? 0
        self = CGRect.init(x: leading, y: top, width: tailing - leading, height: bottom - top)
    }
    
    /// Origin to Destination
    init(origin: CGPoint?=nil, tailing: CGFloat?=nil, bottom: CGFloat?=nil) {
        let origin = origin ?? .zero
        let tailing = tailing ?? 0
        let bottom = bottom ?? 0
        self = CGRect.init(x: origin.x, y: origin.y, width: tailing - origin.x, height: bottom - origin.y)
    }
    
    /// Origin to Destination
    init(leading: CGFloat?=nil, top: CGFloat?=nil, destination: CGPoint?=nil) {
        let leading = leading ?? 0
        let top = top ?? 0
        let destination = destination ?? .zero
        self = CGRect.init(x: leading, y: top, width: destination.x - leading, height: destination.y - top)
    }
    
    /// Origin to Destination
    init(origin: CGPoint?=nil, destination: CGPoint?=nil) {
        let origin = origin ?? .zero
        let destination = destination ?? .zero
        self = CGRect.init(x: origin.x, y: origin.y, width: destination.x - origin.x, height: destination.y - origin.y)
    }
}

//MARK:- Origin and Size
extension CGRect {
    
    /// Origin and Size
    init(leading: CGFloat?=nil, top: CGFloat?=nil, width: CGFloat?=nil, height: CGFloat?=nil) {
        let leading = leading ?? 0
        let top = top ?? 0
        let width = width ?? 0
        let height = height ?? 0
        self = CGRect.init(x: leading, y: top, width: width, height: height)
    }
   
    /// Origin and Size
    init(origin: CGPoint?=nil, width: CGFloat?=nil, height: CGFloat?=nil) {
        let origin = origin ?? .zero
        let width = width ?? 0
        let height = height ?? 0
        self = CGRect.init(x: origin.x, y: origin.y, width: width, height: height)
    }
    
    /// Origin and Size
    init(leading: CGFloat?=nil, top: CGFloat?=nil, size: CGSize?=nil) {
        let leading = leading ?? 0
        let top = top ?? 0
        let size = size ?? .zero
        self = CGRect.init(x: leading, y: top, width: size.width, height: size.height)
    }
    
    /// Origin and Size
    init(origin: CGPoint?=nil, size: CGSize?=nil) {
        let origin = origin ?? .zero
        let size = size ?? .zero
        self = CGRect.init(origin: origin, size: size)
    }
}

//MARK:- Destination and Size
extension CGRect {
    
    /// Destination and Size
    init(tail: CGFloat?=nil, bottom: CGFloat?=nil, width: CGFloat?=nil, height: CGFloat?=nil) {
        let tail = tail ?? 0
        let bottom = bottom ?? 0
        let width = width ?? 0
        let height = height ?? 0
        self = CGRect.init(x: tail - width, y: bottom - height, width: width, height: height)
    }
    
    /// Destination and Size
    init(tail: CGFloat?=nil, bottom: CGFloat?=nil, size: CGSize?=nil) {
        let tail = tail ?? 0
        let bottom = bottom ?? 0
        let size = size ?? .zero
        self = CGRect.init(x: tail - size.width, y: bottom - size.height, width: size.width, height: size.height)
    }
    
    /// Destination and Size
    init(destination: CGPoint?=nil, width: CGFloat?=nil, height: CGFloat?=nil) {
        let destination = destination ?? .zero
        let width = width ?? 0
        let height = height ?? 0
        self = CGRect.init(x: destination.x - width, y: destination.y - height, width: width, height: height)
    }
    
    /// Destination and Size
    init(destination: CGPoint?=nil, size: CGSize?=nil) {
        let destination = destination ?? .zero
        let size = size ?? .zero
        self = CGRect.init(x: destination.x - size.width, y: destination.y - size.height, width: size.width, height: size.height)
    }

}

//MARK:- Center and Size
extension CGRect {
    
    /// Center and Size
    init(centerX: CGFloat?=nil, top: CGFloat?=nil, width: CGFloat?=nil, height: CGFloat?=nil) {
        let width = width ?? 0
        let height = height ?? 0
        let centerX = centerX ?? width / 2.0
        let top = top ?? 0
        self = CGRect.init(x: centerX - width / 2.0, y: top, width: width, height: height)
    }
    
    /// Center and Size
    init(centerX: CGFloat?=nil, top: CGFloat?=nil, size: CGSize?=nil) {
        let size = size ?? .zero
        let centerX = centerX ?? size.width / 2.0
        let top = top ?? 0
        self = CGRect.init(x: centerX - size.width / 2.0, y: top, width: size.width, height: size.height)
    }
    
    /// Center and Size
    init(leading: CGFloat?=nil, centerY: CGFloat?=nil, width: CGFloat?=nil, height: CGFloat?=nil) {
        let width = width ?? 0
        let height = height ?? 0
        let centerY = centerY ?? height / 2.0
        let leading = leading ?? 0
        self = CGRect.init(x: leading, y: centerY - height / 2.0, width: width, height: height)
    }
    
    /// Center and Size
    init(leading: CGFloat?=nil, centerY: CGFloat?=nil, size: CGSize?=nil) {
        let size = size ?? .zero
        let centerY = centerY ?? size.height / 2.0
        let leading = leading ?? 0
        self = CGRect.init(x: leading, y: centerY - size.height / 2.0, width: size.width, height: size.height)
    }
    
    /// Center and Size
    init(center: CGPoint?=nil, width: CGFloat?=nil, height: CGFloat?=nil) {
        let width = width ?? 0
        let height = height ?? 0
        let center = center ?? CGPoint.init(x: width / 2.0, y: height / 2.0)
        self = CGRect.init(x: center.x - width / 2.0, y: center.y - height / 2.0, width: width, height: height)
    }
    
    /// Center and Size
    init(center: CGPoint?=nil, size: CGSize?=nil) {
        let size = size ?? .zero
        let center = center ?? CGPoint.init(x: size.width / 2.0, y: size.height / 2.0)
        self = CGRect.init(x: center.x - size.width / 2.0, y: center.y - size.height / 2.0, width: size.width, height: size.height)
    }
    
    
}

// Point With Loc
extension CGRect {
    public func loc(ratioHor: CGFloat, ratioVer: CGFloat) -> CGPoint {
        let origin = self.origin
        let size = self.size
        return CGPoint.init(x: origin.x + size.width * ratioHor, y: origin.y + size.height * ratioVer)
    }
    
    public func loc(sizeHor: CGFloat, sizeVer: CGFloat) -> CGPoint {
        let origin = self.origin
        return CGPoint.init(x: origin.x + sizeHor, y: origin.y + sizeVer)
    }
}

// Size With Ratio
extension CGRect {
    public func size(of ratio: CGFloat) -> CGSize {
        return CGSize.init(width: self.size.width * ratio, height: self.size.height * ratio)
    }
    
    public func size(ratioHor: CGFloat, ratioVer: CGFloat) -> CGSize {
        return CGSize.init(width: self.size.width * ratioHor, height: self.size.height * ratioVer)
    }
    
}
