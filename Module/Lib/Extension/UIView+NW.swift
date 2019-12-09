//
//  UIView+NW.swift
//  Module
//
//  Created by Neal on 2019/11/29.
//  Copyright © 2019 Neal. All rights reserved.
//

import UIKit
import SnapKit

extension UIView {
    
    public var Width: CGFloat! {
        set {
            self.frame.size = CGSize.init(width: newValue, height: self.frame.size.height)
        }
        get {
            return self.frame.size.width
        }
    }
    
    public var Height: CGFloat! {
        set {
            self.frame.size = CGSize.init(width: self.frame.size.width, height: newValue)
        }
        get {
            return self.frame.size.height
        }
    }
    
    public var Leading: CGFloat! {
        set {
            self.frame.origin = CGPoint.init(x: newValue, y: self.frame.origin.y)
        }
        get {
            return self.frame.origin.x
        }
    }
    
    public var Top: CGFloat! {
        set {
            self.frame.origin = CGPoint.init(x: self.frame.origin.x, y: newValue)
        }
        get {
            return self.frame.origin.y
        }
    }
    
    public var Tailing: CGFloat! {
        set {
            self.frame.origin = CGPoint.init(x: newValue - self.frame.size.width, y: self.frame.origin.y)
        }
        get {
            return self.frame.origin.x + self.frame.size.width
        }
    }
    
    public var Bottom: CGFloat! {
        set {
            self.frame.origin = CGPoint.init(x: self.frame.origin.x, y: newValue - self.frame.size.height)
        }
        get {
            return self.frame.origin.y + self.frame.size.height
        }
    }
    
    public var destination: CGPoint! {
        set {
            self.frame.origin = CGPoint.init(x: newValue.x - self.frame.size.width, y: newValue.y - self.frame.size.height)
        }
        get {
            return CGPoint.init(x: self.frame.origin.x + self.frame.size.width, y: self.frame.origin.y + self.frame.size.height)
        }
    }
    
    public var Center: CGPoint! {
        set {
            self.frame.origin = CGPoint.init(x: newValue.x - self.frame.size.width / 2.0, y: newValue.y - self.frame.size.height / 2.0)
        }
        get {
            return CGPoint.init(x: self.frame.origin.x + self.frame.size.width / 2.0, y: self.frame.origin.y + self.frame.size.height / 2.0)
        }
    }
    
}

//MARK:- 拓展UIView
extension UIView {
    
    /// 设置frame
    /// - Parameter frame: CGRect
    public func setFrame(_ frame: CGRect) -> Self {
        self.frame = frame
        return self
    }
    
    /// 设置约束
    /// - Parameter closure: SnapKit 约束
    public func setConstraints(closure: (ConstraintMaker) -> Void) -> Self {
        self.snp.makeConstraints(closure)
        return self
    }
    
    public func setConstraintsUpdate(closure: (ConstraintMaker) -> Void) -> Self {
        self.snp.updateConstraints(closure)
        return self
    }
    
    /// 设置背景颜色
    /// - Parameter backgroundColor: 背景颜色 UIColor
    public func setBackgroundColor(_ backgroundColor: UIColor) -> Self {
        self.backgroundColor = backgroundColor
        return self
    }
    
    /// 设置透明度
    /// - Parameter alpha: 透明度 CGFloat
    public func setAlpha(_ alpha: CGFloat) -> Self {
        self.alpha = alpha
        return self
    }
    
    public func setHidden(_ isHidden: Bool) -> Self {
        self.isHidden = isHidden
        return self
    }
    
    /// 设置容器
    /// - Parameter view: 容器 UIView
    public func setSuperView(_ view: UIView) -> Self {
        view.addSubview(self)
        return self
    }
    
    /// 设置圆角
    /// - Parameters:
    ///   - cornerRadius: 弧度
    ///   - masksToBounds: 切边
    public func setLayer(cornerRadius: CGFloat, masksToBounds: Bool=false) -> Self {
        self.layer.cornerRadius = cornerRadius
        self.layer.masksToBounds = masksToBounds
        return self
    }
    
    
    /// 设置部分圆角 注意阴影的影响
    /// - Parameters:
    ///   - cornerRadius: 圆角大小
    ///   - maskPathList: 圆角出现的位置
    public func setLayer(cornerRadius: CGFloat, maskPathList: UIRectCorner) -> Self {
        superview?.layoutIfNeeded()
        let maskPath = UIBezierPath.init(roundedRect: self.bounds, byRoundingCorners: maskPathList, cornerRadii: CGSize.init(width: cornerRadius, height: cornerRadius))
        let maskLayer = CAShapeLayer.init()
        maskLayer.frame = self.bounds
        maskLayer.path = maskPath.cgPath
        self.layer.mask = maskLayer
        return self
    }
    
    /// 设置阴影
    /// - Parameters:
    ///   - shadowColor: 阴影颜色
    ///   - shadowOffset: 阴影偏移量
    ///   - shadowRadius: 阴影半径
    ///   - shadowOpacity: 阴影透明度
    public func setShadow(shadowColor: UIColor=ColorList.dimGray, shadowOffset: CGSize=CGSize.init(width: 1, height: 1), shadowRadius:CGFloat=4, shadowOpacity:Float = 0.8) -> Self {
        self.layer.shadowColor = shadowColor.cgColor
        self.layer.shadowOffset = shadowOffset
        self.layer.shadowRadius = shadowRadius
        self.layer.shadowOpacity = shadowOpacity
        return self
    }
    
    /// 设置图片图层
    /// - Parameter imageLayer: 图片图层
    public func setImageLayer(imageLayer: (CALayer)->()) -> Self {
        superview?.layoutIfNeeded()
        let imgLayer = CALayer.init()
        imageLayer(imgLayer)
        self.layer.addSublayer(imgLayer)
        return self
    }
    
    /// 设置文本图层
    /// - Parameter textLayer: 文本图层
    public func setTextLayer(textLayer: (CATextLayer)->()) -> Self {
        superview?.layoutIfNeeded()
        let titleLayer = CATextLayer.init()
        textLayer(titleLayer)
        self.layer.addSublayer(titleLayer)
        return self
    }
    
    public func setUserInterface(_ isUserInterface: Bool) -> Self {
        self.isUserInteractionEnabled = isUserInterface
        return self
    }
    
    
}

//MARK:- 拓展UILabel

extension UILabel {
    
    /// 设置文本
    /// - Parameter title: 文本 String
    func setTitle(_ title: String) -> Self {
        self.text = title
        return self
    }
    
    /// 设置字体
    /// - Parameter font: 字体 UIFont
    func setFont(_ font: UIFont) -> Self {
        self.font = font
        return self
    }
    
    /// 设置前景色
    /// - Parameter foregroundColor: 字体颜色 UIColor
    func setForegroundColor(_ foregroundColor: UIColor) -> Self {
        self.textColor = foregroundColor
        return self
    }
    
    /// 设置对齐方式
    /// - Parameter alignment: 对齐方式 NSTextAlignment
    func setAlignment(_ alignment: NSTextAlignment) -> Self {
        self.textAlignment = alignment
        return self
    }
    
    /// 设置文本最高行数
    /// - Parameter numberOfLines: 行数 Int
    func setNumberOfLines(_ numberOfLines: Int) -> Self {
        self.numberOfLines = numberOfLines
        return self
    }
    
    /// 设置富文本
    /// - Parameter attributeStr: 富文本 NSAttributedString
    func setAttributeStr(attributeStr: (NSAttributedString)->()) -> Self {
        let attributeString = NSAttributedString.init()
        attributeStr(attributeString)
        self.attributedText = attributeString
        return self
    }
}

//MARK:- 拓展UIImageView
extension UIImageView {
    
    /// 设置图片
    /// - Parameter image: UIImage 图片
    func setImage(_ image: UIImage) -> Self {
        self.image = image
        return self
    }
}

//MARK:- 拓展UIButton
extension UIButton {
    
    /// 设置图片
    /// - Parameter image: UIImage 图片
    func setImage(img: UIImage, for state: UIControl.State = .normal) -> Self {
        self.setImage(img, for: state)
        return self
    }
    
    func setBackgroundImage(img: UIImage, for state: UIControl.State = .normal) -> Self {
        self.setBackgroundImage(img, for: state)
        return self
    }
    
    func setTitle(str: String, for state: UIControl.State = .normal) -> Self {
        self.setTitle(str, for: state)
        return self
    }
    
    func setTitleColor(color: UIColor, for state: UIControl.State = .normal) -> Self {
        self.setTitleColor(color, for: state)
        return self
    }
    
    func setFont(_ font: UIFont) -> Self {
        self.titleLabel?.font = font
        return self
    }
    
    
}

//MARK:- 拓展UITextField
extension UITextField {
    
    func setLeftView(leftView: (UIView)->()) -> Self {
        let view = UIView()
        leftView(view)
        self.leftView = view
        self.leftViewMode = .always
        return self
    }
    
    func setRightView(leftView: (UIView)->()) -> Self {
        let view = UIView()
        leftView(view)
        self.rightView = view
        self.rightViewMode = .always
        return self
    }
    
    func setTitle(_ title: String) -> Self {
        self.text = title
        return self
    }
    
    func setPlaceholder(_ placeholder: String) -> Self {
        self.placeholder = placeholder
        return self
    }
    
    /// 设置字体
    /// - Parameter font: 字体 UIFont
    func setFont(_ font: UIFont) -> Self {
        self.font = font
        return self
    }
    
    /// 设置前景色
    /// - Parameter foregroundColor: 字体颜色 UIColor
    func setForegroundColor(_ foregroundColor: UIColor) -> Self {
        self.textColor = foregroundColor
        return self
    }
    
    /// 设置对齐方式
    /// - Parameter alignment: 对齐方式 NSTextAlignment
    func setAlignment(_ alignment: NSTextAlignment) -> Self {
        self.textAlignment = alignment
        return self
    }
    
    func setClearBtnMode(_ clearButtonMode: UITextField.ViewMode = .whileEditing) -> Self {
        self.clearButtonMode = clearButtonMode
        return self
    }
    
    func setSecureTextEntry(_ isSecureTextEntry: Bool=true) -> Self {
        self.isSecureTextEntry = isSecureTextEntry
        return self
    }
    
    func setKeyboardType(_ keyboardType: UIKeyboardType = .default) -> Self {
        self.keyboardType = keyboardType
        return self
    }
    
    func setDelegate(_ objc: NSObject) -> Self {
        self.delegate = (objc as! UITextFieldDelegate)
        return self
    }
}
