//
//  BaseNavbar.swift
//  Module
//
//  Created by Neal on 2019/11/29.
//  Copyright © 2019 Neal. All rights reserved.
//

import UIKit

class BaseNavbar: UIView {
    
    private var _lblTitle: UILabel!
    fileprivate var lblTitle: UILabel! {
        set {
            _lblTitle = newValue
        }
        get {
            if _lblTitle == nil {
                _lblTitle = UILabel()
                    .setSuperView(self)
                    .setAlignment(.center)
                    .setFont(.systemFont(ofSize: 22))
                    .setForegroundColor(.white)
                    .setConstraints(closure: { (base) in
                        base.leading.equalTo(self.snp.leading)
                        base.trailing.equalTo(self.snp.trailing)
                        base.top.equalTo(App.StatusBar.height)
                        base.height.equalTo(App.NavigationBar.height)
                    })
            }
            return _lblTitle
        }
    }
    
    init(title: String) {
        self.init()
        self.lblTitle.text = title
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension BaseNavbar {
    func setTitle(_ title: String) -> Self {
        _ = self.lblTitle.setTitle(title)
        return self
    }
    
    func setFont(_ font: UIFont) -> Self {
        _ = self.lblTitle.setFont(font)
        return self
    }
    
    func setAlignment(_ alignment: NSTextAlignment) -> Self {
        _ = self.lblTitle.setAlignment(alignment)
        return self
    }
    
    func setForegroundColor(_ foregroundColor: UIColor) -> Self {
        _ = self.lblTitle.setForegroundColor(foregroundColor)
        return self
    }
}
