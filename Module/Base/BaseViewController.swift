//
//  BaseViewController.swift
//  Module
//
//  Created by Neal on 2019/11/29.
//  Copyright © 2019 Neal. All rights reserved.
//

import UIKit
import SnapKit

import RxSwift
import RxCocoa

class BaseViewController: UIViewController {
    
    var disposeMain: [Disposable] = []
    
    var disposeCell: [Disposable] = []

    public var navBar: BaseNavbar!
    
    var tabbar: BaseTabbar!
    
    var _statusBarStyle: UIStatusBarStyle = .default
    
    var statusBarStyle: UIStatusBarStyle! {
        set {
            _statusBarStyle = newValue
            switch newValue {
            case .lightContent:
                self.navigationController?.navigationBar.barStyle = .black
                break
            default:
                self.navigationController?.navigationBar.barStyle = .default
                break
            }
        }
        get {
            return _statusBarStyle
        }
    }
    
    private var _tableview: UITableView!
    public var tableView: UITableView! {
        get {
            if _tableview == nil {
                _tableview = UITableView.init(frame: .zero, style: .plain)
                self.view.addSubview(_tableview)
                _tableview.snp.makeConstraints { (base) in
                    base.top.equalTo(navBar.snp.bottom)
                    base.leading.equalTo(navBar.snp.leading)
                    base.trailing.equalTo(navBar.snp.trailing)
                }
            }
            return _tableview
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.setStatusBar()
        
        self.setNavbar()
        
        self.setTabbar()
        
        self.setMainView()
        
    }
    
    
    /// 设置状态栏
    func setStatusBar() {
        

    }
    
    /// 设置导航栏
    func setNavbar() {
        self.navigationController?.navigationBar.isHidden = true
        self.navBar = BaseNavbar(title: self.navigationController?.title ?? "")
            .setBackgroundColor(#colorLiteral(red: 0.96897012, green: 0.9658034444, blue: 0.965562284, alpha: 1))
            .setForegroundColor(.black)
            .setSuperView(self.view)
            .setConstraints(closure: { (base) in
                base.top.equalTo(self.view.snp.top)
                base.leading.equalTo(self.view.snp.leading)
                base.trailing.equalTo(self.view.snp.trailing)
                base.height.equalTo(App.StatusBar.height + App.NavigationBar.height)
            })
        
    }
    
    /// 设置标签栏
    func setTabbar() { }
    
    /// 设置主页面
    func setMainView() { }
    
    
    override func didMove(toParent parent: UIViewController?) {
        
        if parent == nil {
            Disposables.create(self.disposeMain).dispose()
            Disposables.create(self.disposeCell).dispose()
        }
        
        super.didMove(toParent: parent)
    }

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let view = UIApplication.shared.keyWindow?.perform(Selector(("firstResponder"))) {
              let first = view.takeRetainedValue() as? UIView
              first?.resignFirstResponder()
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let view = UIApplication.shared.keyWindow?.perform(Selector(("firstResponder"))) {
              let first = view.takeRetainedValue() as? UIView
              first?.resignFirstResponder()
        }
    }
}

extension BaseViewController {
    func resignKeyboard() {
        if let view = UIApplication.shared.keyWindow?.perform(Selector(("firstResponder"))) {
              let first = view.takeRetainedValue() as? UIView
              first?.resignFirstResponder()
        }
    }
}
