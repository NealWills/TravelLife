//
//  BaseTabbarViewController.swift
//  Module
//
//  Created by Neal on 2019/11/29.
//  Copyright © 2019 Neal. All rights reserved.
//

import UIKit

class BaseTabbarViewController: UITabBarController {
    
    var arrTitle: [String]!
    
    var arrImgNormal: [UIImage]!
    
    var arrImgSelected: [UIImage]!
    
    var currentSelectedIndex: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.arrTitle = ["首页", "发现", "订单", "我的"]
        
        self.arrImgNormal = [UIImage.init(named: "Tabbar_01_Btn_Normal")!, UIImage.init(named: "Tabbar_02_Btn_Normal")!, UIImage.init(named: "Tabbar_03_Btn_Normal")!, UIImage.init(named: "Tabbar_04_Btn_Normal")!]
        
        self.arrImgSelected = [UIImage.init(named: "Tabbar_01_Btn_Selected")!, UIImage.init(named: "Tabbar_02_Btn_Selected")!, UIImage.init(named: "Tabbar_03_Btn_Selected")!, UIImage.init(named: "Tabbar_04_Btn_Selected")!]
        
        self.AddChild(baseVC: HomeViewController(), index: 0)
        
        self.AddChild(baseVC: FoundViewController(), index: 1)
        
        self.AddChild(baseVC: OrderViewController(), index: 2)
        
        self.AddChild(baseVC: MineViewController(), index: 3)
     
        self.tabBar.isHidden = true
    }
    
    
    func AddChild(baseVC: UIViewController, index: Int) {
        
        let vc = UINavigationController.init(rootViewController: baseVC)
        
        vc.title = self.arrTitle[index]
        
        vc.tabBarItem.selectedImage = self.arrImgSelected[index]
        
        vc.tabBarItem.image = self.arrImgNormal[index]
        
        self.addChild(vc)
        
    }

}
