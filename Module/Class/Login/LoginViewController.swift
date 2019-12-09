//
//  LoginViewController.swift
//  Module
//
//  Created by Neal on 2019/11/29.
//  Copyright © 2019 Neal. All rights reserved.
//

import UIKit

class LoginViewController: BaseViewController {
    
    var viewContent: UIView!
    
    var btnQQ: UIButton!
    
    var btnWeChat: UIButton!
    
    var btnLogin: UIButton!
    
    var btnForget: UIButton!
    
    var btnRegist: UIButton!
    
    var btnLoginStart: UIButton!
    
    var btnRegistStart: UIButton!
    
    var textPassword: UITextField!
    
    var textAccount: UITextField!
    
    var textCodeRegist: UITextField!
    
    var btnCodeRegist: UIButton!
    
    var textPasswordRegist: UITextField!
    
    var textPasswordSureRegist: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func setStatusBar() {
        super.setStatusBar()
        self.statusBarStyle = .lightContent
    }
    
    override func setNavbar() {
        super.setNavbar()
        self.navBar.isHidden = true
    }
    
    override func setMainView() {
        super.setMainView()
        
        //头部图片
        _ = UIImageView.init()
            .setSuperView(self.view)
            .setImage(UIImage.init(named: "Login_BG_TOP_2")!)
            .setLayer(cornerRadius: self.view.Width * 0.17, masksToBounds: true)
            .setConstraints(closure: { (base) in
                base.left.equalTo(self.view.snp.left)
                base.right.equalTo(self.view.snp.right)
                base.top.equalTo(self.view.Top).offset(-self.view.Width * 0.2 - 44 + App.StatusBar.height)
                base.height.equalTo(self.view.snp.width)
            })
        
        //容器
        self.viewContent = UIView()
            .setSuperView(self.view)
            .setBackgroundColor(.white)
            .setShadow(shadowRadius: 10, shadowOpacity: 0.13)
            .setLayer(cornerRadius: 15)
            .setConstraints(closure: { (base) in
                base.centerX.equalTo(self.view)
                base.centerY.equalTo(self.view).offset(20)
                base.width.equalTo(self.view.Width * 0.75)
                base.height.equalTo(340)
            })
            
        
        // MARK  登陆模块
            
        //qq登陆
        self.btnQQ = UIButton.init()
            .setSuperView(self.view)
            .setBackgroundColor(#colorLiteral(red: 0.9127119184, green: 0.9528692365, blue: 0.9893372655, alpha: 1))
            .setLayer(cornerRadius: 22.5)
            .setConstraints(closure: { (base) in
                base.top.equalTo(self.viewContent.snp.bottom).offset(30)
                base.leading.equalTo(self.viewContent.snp.leading).offset(300 * 0.1 / 3.0)
                base.width.equalTo(self.viewContent.snp.width).multipliedBy(0.45)
                base.height.equalTo(45)
            })
            .setImageLayer(imageLayer: { (layer) in
                layer.frame = CGRect.init(x: 22.5, y: 10, width: 25, height: 25)
                layer.backgroundColor = UIColor.clear.cgColor
                layer.contents = UIImage.init(named: "Login_Btn_QQ")?.cgImage
            })
            .setTextLayer(textLayer: { [weak self] (layer) in
                layer.frame = CGRect.init(x: 50, y: 12, width: (self?.view.Width)! * 0.75 * 0.45 - 72.5, height: 25)
                layer.string = "QQ"
                layer.foregroundColor = UIColor.hexColor("#2788FF").cgColor
                layer.fontSize = 17
                layer.alignmentMode = .center
                
            })
        
        let disposeBtnQQ = self.btnQQ.rx.tap
            .subscribe(onNext: { [weak self] (_) in
                
                self?.resignKeyboard()
                
                Log.Info("LoginByQQ")
            })
        self.disposeMain.append(disposeBtnQQ)
        
        //微信登陆
        self.btnWeChat = UIButton.init()
            .setSuperView(self.view)
            .setBackgroundColor(#colorLiteral(red: 0.894144237, green: 0.9607288241, blue: 0.9378902912, alpha: 1))
            .setLayer(cornerRadius: 20)
            .setConstraints(closure: { (base) in
                base.top.equalTo(self.btnQQ.snp.top)
                base.trailing.equalTo(self.viewContent.snp.trailing).offset(-300 * 0.1 / 3.0)
                base.size.equalTo(self.btnQQ)
            })
            .setImageLayer(imageLayer: { (layer) in
                layer.frame = CGRect.init(x: 22.5, y: 10, width: 25, height: 25)
                layer.backgroundColor = UIColor.clear.cgColor
                layer.contents = UIImage.init(named: "Login_Btn_WeChat")?.cgImage
            })
            .setTextLayer(textLayer: { [weak self] (layer) in
                layer.frame = CGRect.init(x: 50, y: 12, width: (self?.view.Width)! * 0.75 * 0.45 - 72.5, height: 25)
            layer.string = "WeChat"
            layer.foregroundColor = UIColor.hexColor("#29B15F").cgColor
            layer.fontSize = 17
            layer.alignmentMode = .center

        })
        
        let disposeBtnWeChat = self.btnWeChat.rx.tap
            .subscribe(onNext: { [weak self] (_) in
                
                self?.resignKeyboard()
                
                Log.Info("LoginByWeChat")
            })
        self.disposeMain.append(disposeBtnWeChat)
        
        // 登陆账户
        self.textAccount = UITextField()
            .setSuperView(self.viewContent)
            .setBackgroundColor(#colorLiteral(red: 0.9843137255, green: 0.9843137255, blue: 0.9843137255, alpha: 1))
            .setLayer(cornerRadius: 22.5)
            .setPlaceholder("请输入手机号")
            .setFont(.systemFont(ofSize: 16))
            .setDelegate(self)
            .setClearBtnMode(.whileEditing)
            .setConstraints(closure: { (base) in
                base.top.equalTo(self.viewContent.snp.top).offset(50)
                base.centerX.equalTo(self.viewContent.snp.centerX)
                base.width.equalTo(self.viewContent.snp.width).multipliedBy(0.8)
                base.height.equalTo(45)
            })
            .setLeftView(leftView: { (view) in
                _ = view.setFrame(.init(origin: .zero, width: 50, height: 45))
                _ = UIImageView()
                    .setSuperView(view)
                    .setImage(UIImage.init(named: "Login_Text_Account")!)
                    .setFrame(CGRect.init(x: 15, y: 10, width: 25, height: 25))
            })
            
        // 登陆密码
        self.textPassword = UITextField()
            .setSuperView(self.viewContent)
            .setBackgroundColor(#colorLiteral(red: 0.984384954, green: 0.9844953418, blue: 0.9843212962, alpha: 1))
            .setLayer(cornerRadius: 22.5)
            .setPlaceholder("请输入密码")
            .setFont(.systemFont(ofSize: 16))
            .setSecureTextEntry(true)
            .setDelegate(self)
            .setClearBtnMode(.whileEditing)
            .setConstraints(closure: { (base) in
                base.top.equalTo(self.textAccount.snp.bottom).offset(30)
                base.centerX.equalTo(self.textAccount)
                base.size.equalTo(self.textAccount)
            })
            .setLeftView(leftView: { (view) in
                _ = view.setFrame(.init(origin: .zero, width: 50, height: 45))
                _ = UIImageView()
                    .setSuperView(view)
                    .setImage(UIImage.init(named: "Login_Text_Password")!)
                    .setFrame(CGRect.init(x: 17, y: 12, width: 20, height: 21))
            })
            
        // 登陆按钮
        self.btnLoginStart = UIButton()
            .setSuperView(self.viewContent)
            .setLayer(cornerRadius: 22.5)
            .setBackgroundColor(#colorLiteral(red: 0.8910909295, green: 0.4185850024, blue: 0.3280329108, alpha: 1))
            .setShadow(shadowColor: #colorLiteral(red: 0.6406241606, green: 0.373697427, blue: 0.3203120803, alpha: 1), shadowOffset: CGSize.init(width: 2, height: 2), shadowRadius: 3, shadowOpacity: 0.6)
            .setFont(.boldSystemFont(ofSize: 18))
            .setTitle(str: "开启民宿探险", for: .normal)
            .setConstraints(closure: { (base) in
                base.centerX.equalTo(self.viewContent.snp.centerX)
                base.bottom.equalTo(self.viewContent.snp.bottom).offset(-70)
                base.size.equalTo(self.textAccount)
            })
        
        
        //忘记密码按钮
        self.btnForget = UIButton()
            .setSuperView(self.viewContent)
            .setFont(.systemFont(ofSize: 15))
            .setTitle(str: "忘记密码了?", for: .normal)
            .setTitleColor(color: #colorLiteral(red: 0.7647058824, green: 0.7647058824, blue: 0.7647058824, alpha: 1), for: .normal)
            .setConstraints(closure: { (base) in
                base.centerX.equalTo(self.btnLoginStart)
                base.top.equalTo(self.btnLoginStart.snp.bottom).offset(20)
                base.width.equalTo(self.btnLoginStart).multipliedBy(0.8)
                base.height.equalTo(20)
            })
        
        let disposeBtnForget = self.btnForget.rx
            .tap
            .subscribe(onNext: { [weak self] (_) in
                
                self?.resignKeyboard()
                
                Log.Info("ForgetClick")
            })
        self.disposeMain.append(disposeBtnForget)
        
        // MARK  注册模块
        
        self.view.layoutIfNeeded()
        
        self.textCodeRegist = UITextField()
            .setSuperView(self.viewContent)
            .setBackgroundColor(#colorLiteral(red: 0.9843137255, green: 0.9843137255, blue: 0.9843137255, alpha: 1))
            .setLayer(cornerRadius: 22.5)
            .setPlaceholder("请输入验证码")
            .setFont(.systemFont(ofSize: 16))
            .setDelegate(self)
            .setAlpha(0.0)
            .setHidden(true)
            .setConstraints(closure: { (base) in
                base.top.equalTo(self.textAccount.snp.bottom).offset(30)
                base.centerX.equalTo(self.textAccount.snp.centerX)
                base.size.equalTo(self.textAccount)
            })
            .setLeftView(leftView: { (view) in
                _ = view.setFrame(.init(origin: .zero, width: 50, height: 45))
                _ = UIImageView()
                    .setSuperView(view)
                    .setImage(UIImage.init(named: "Login_Text_Account")!)
                    .setFrame(CGRect.init(x: 15, y: 10, width: 25, height: 25))
            })
            .setRightView(leftView: { (view) in
                _ = view
                    .setLayer(cornerRadius: 22.5)
                    .setConstraints(closure: { (base) in
                        Log.Info(self.textAccount.frame)
                        base.width.equalTo(60)
                        base.height.equalTo(45)
                    })
                    
                self.btnCodeRegist = UIButton()
                    .setSuperView(view)
                    .setLayer(cornerRadius: 22.5)
                    .setBackgroundColor(#colorLiteral(red: 0.8910909295, green: 0.4185850024, blue: 0.3280329108, alpha: 1))
                    .setConstraints(closure: { (base) in
                        base.size.equalTo(view)
                    })
                
            })
        
        self.textPasswordRegist = UITextField()
            .setSuperView(self.viewContent)
            .setBackgroundColor(#colorLiteral(red: 0.9843137255, green: 0.9843137255, blue: 0.9843137255, alpha: 1))
            .setLayer(cornerRadius: 22.5)
            .setPlaceholder("请输入密码")
            .setFont(.systemFont(ofSize: 16))
            .setDelegate(self)
            .setAlpha(0.0)
            .setHidden(true)
            .setClearBtnMode(.whileEditing)
            .setConstraints(closure: { (base) in
                base.top.equalTo(self.textCodeRegist.snp.bottom).offset(30)
                base.centerX.equalTo(self.textAccount.snp.centerX)
                base.size.equalTo(self.textAccount)
            })
            .setLeftView(leftView: { (view) in
                _ = view.setFrame(.init(origin: .zero, width: 50, height: 45))
                _ = UIImageView()
                    .setSuperView(view)
                    .setImage(UIImage.init(named: "Login_Text_Password")!)
                    .setFrame(CGRect.init(x: 17, y: 12, width: 20, height: 21))
            })
        
        self.textPasswordSureRegist = UITextField()
            .setSuperView(self.viewContent)
            .setBackgroundColor(#colorLiteral(red: 0.9843137255, green: 0.9843137255, blue: 0.9843137255, alpha: 1))
            .setLayer(cornerRadius: 22.5)
            .setPlaceholder("请再次输入密码")
            .setFont(.systemFont(ofSize: 16))
            .setAlpha(0.0)
            .setDelegate(self)
            .setHidden(true)
            .setClearBtnMode(.whileEditing)
            .setConstraints(closure: { (base) in
                base.top.equalTo(self.textPasswordRegist.snp.bottom).offset(30)
                base.centerX.equalTo(self.textAccount.snp.centerX)
                base.size.equalTo(self.textAccount)
            })
            .setLeftView(leftView: { (view) in
                _ = view.setFrame(.init(origin: .zero, width: 50, height: 45))
                _ = UIImageView()
                    .setSuperView(view)
                    .setImage(UIImage.init(named: "Login_Text_Password")!)
                    .setFrame(CGRect.init(x: 17, y: 12, width: 20, height: 21))
            })
        
        self.btnRegistStart = UIButton()
            .setSuperView(self.viewContent)
            .setBackgroundColor(#colorLiteral(red: 0.1795306504, green: 0.7170569301, blue: 0.5181710124, alpha: 1))
            .setHidden(true)
            .setAlpha(0)
            .setFont(.boldSystemFont(ofSize: 18))
            .setTitle(str: "立即注册", for: .normal)
            .setLayer(cornerRadius: 22.5)
            .setShadow(shadowColor: #colorLiteral(red: 0.2308710449, green: 0.5870537195, blue: 0.4552653386, alpha: 1), shadowOffset: CGSize.init(width: 2, height: 2), shadowRadius: 3, shadowOpacity: 0.6)
            .setConstraints(closure: { (base) in
                base.centerX.equalTo(self.textAccount)
                base.size.equalTo(self.btnLoginStart)
                base.bottom.bottom.equalTo(self.viewContent.snp.bottom).offset(-30)
            })

        // 登陆注册切换
        self.btnLogin = UIButton()
            .setSuperView(self.view)
            .setBackgroundColor(.white)
            .setUserInterface(false)
            .setLayer(cornerRadius: 15)
            .setTitle(str: "登录", for: .normal)
            .setTitleColor(color: #colorLiteral(red: 0.9836842418, green: 0.4332529902, blue: 0.4369177222, alpha: 1), for: .normal)
            .setFont(UIFont.boldSystemFont(ofSize: 20))
            .setConstraints(closure: { (base) in
                base.bottom.equalTo(self.viewContent.snp.top).offset(30)
                base.width.equalTo(self.viewContent.Width / 2.0 + 15)
                base.height.equalTo(80)
                base.leading.equalTo(self.viewContent.snp.leading)
            })
        self.btnLogin.titleEdgeInsets = UIEdgeInsets.init(top: 0, left: 0, bottom: 30, right: 0)
        
        self.btnRegist = UIButton()
            .setSuperView(self.view)
            .setBackgroundColor(#colorLiteral(red: 0.9843137255, green: 0.4332529902, blue: 0.4369177222, alpha: 0.5))
            .setLayer(cornerRadius: 15)
            .setTitle(str: "注册", for: .normal)
            .setTitleColor(color: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.7990421661), for: .normal)
            .setFont(UIFont.boldSystemFont(ofSize: 20))
            .setConstraints(closure: { (base) in
                base.bottom.equalTo(self.viewContent.snp.top).offset(40)
                base.width.equalTo(self.viewContent.Width / 2.0 + 15)
                base.height.equalTo(80)
                base.leading.equalTo(self.btnLogin.snp.trailing).offset(-30)
            })
        self.btnRegist.titleEdgeInsets = UIEdgeInsets.init(top: 0, left: 0, bottom: 30, right: 0)
        
        self.view.bringSubviewToFront(self.btnLogin)
        
        self.view.bringSubviewToFront(self.viewContent)
        
        let disposBtnLogin = self.btnLogin.rx
            .tap
            .subscribe(onNext: { [weak self] (_) in
                
                self?.resignKeyboard()

                self!.view.bringSubviewToFront(self!.btnLogin)
                self!.view.bringSubviewToFront(self!.viewContent)
                _ = self?.btnLogin.setUserInterface(false)
                    .setBackgroundColor(.white)
                    .setTitleColor(color: #colorLiteral(red: 0.9836842418, green: 0.4332529902, blue: 0.4369177222, alpha: 1), for: .normal)
                    .setConstraintsUpdate(closure: { (base) in
                        base.bottom.equalTo(self!.viewContent.snp.top).offset(30)
                    })
                
                _ = self?.btnRegist.setUserInterface(false)
                    .setBackgroundColor(#colorLiteral(red: 0.9843137255, green: 0.4332529902, blue: 0.4369177222, alpha: 0.5))
                    .setTitleColor(color: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.7990421661), for: .normal)
                    .setConstraintsUpdate(closure: { (base) in
                        base.bottom.equalTo(self!.viewContent.snp.top).offset(40)
                    })
                
                self?.textPassword.isHidden = false
                self?.btnLoginStart.isHidden = false
                self?.btnForget.isHidden = false
                
                self?.btnQQ.isHidden = false
                self?.btnWeChat.isHidden = false

                self?.textCodeRegist.alpha = 0.0
                self?.textPasswordRegist.alpha = 0.0
                self?.textPasswordSureRegist.alpha = 0.0
                self?.btnRegistStart.alpha = 0.0
            
                self?.btnQQ.alpha = 1.0
                self?.btnWeChat.alpha = 1.0
                _ = self?.viewContent.setConstraintsUpdate(closure: { (base) in
                    base.height.equalTo(340)
                })

                _ = self?.viewContent.setConstraintsUpdate(closure: { (base) in

                    self?.textPassword.alpha = 1.0
                    self?.btnLoginStart.alpha = 1.0
                    self?.btnForget.alpha = 1.0
                })
            

                _ = self?.btnRegist.setUserInterface(true)
                
                self?.textCodeRegist.isHidden = true
                self?.textPasswordRegist.isHidden = true
                self?.textPasswordSureRegist.isHidden = true
                self?.btnRegistStart.isHidden = true
                
                

            })
        self.disposeMain.append(disposBtnLogin)
        
        let disposBtnRegist = self.btnRegist.rx
            .tap
            .subscribe(onNext: { [weak self] (_) in
                
                self?.resignKeyboard()

                self!.view.bringSubviewToFront(self!.btnRegist)
                self!.view.bringSubviewToFront(self!.viewContent)
                _ = self?.btnRegist.setUserInterface(false)
                    .setBackgroundColor(.white)
                    .setTitleColor(color: #colorLiteral(red: 0.9836842418, green: 0.4332529902, blue: 0.4369177222, alpha: 1), for: .normal)
                    .setConstraintsUpdate(closure: { (base) in
                        base.bottom.equalTo((self?.viewContent.snp.top)!).offset(30)
                    })
                
                _ = self?.btnLogin.setUserInterface(false)
                    .setBackgroundColor(#colorLiteral(red: 0.9843137255, green: 0.4332529902, blue: 0.4369177222, alpha: 0.5))
                    .setTitleColor(color: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.7990421661), for: .normal)
                    .setConstraintsUpdate(closure: { (base) in
                        base.bottom.equalTo((self?.viewContent.snp.top)!).offset(40)
                    })
                
                self?.textPassword.alpha = 0.0
                self?.btnLoginStart.alpha = 0.0
                self?.btnForget.alpha = 0.0
                
                self?.btnQQ.alpha = 0.0
                self?.btnWeChat.alpha = 0.0
                
                _ = self?.viewContent.setConstraintsUpdate(closure: { (base) in
                    base.height.equalTo(440)
                })
                
                self?.textCodeRegist.isHidden = false
                self?.textPasswordRegist.isHidden = false
                self?.textPasswordSureRegist.isHidden = false
                self?.btnRegistStart.isHidden = false

                self?.textCodeRegist.alpha = 1.0
                self?.textPasswordRegist.alpha = 1.0
                self?.textPasswordSureRegist.alpha = 1.0
                self?.btnRegistStart.alpha = 1.0
                
                self?.textPassword.isHidden = true
                self?.btnLoginStart.isHidden = true
                self?.btnForget.isHidden = true
                
                self?.btnQQ.isHidden = true
                self?.btnWeChat.isHidden = true
                
                
                _ = self?.btnLogin.setUserInterface(true)


            })
        self.disposeMain.append(disposBtnRegist)
        
    }
    
    override func didMove(toParent parent: UIViewController?) {
        if parent == nil {
            self.textAccount.delegate = nil
            self.textPassword.delegate = nil
        }
        super.didMove(toParent: parent)
    }

}


extension LoginViewController: UITextFieldDelegate {
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {

    
        _ = textField.setShadow(shadowColor: #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1), shadowOffset: .zero, shadowRadius: 2, shadowOpacity: 0.3)
        .setBackgroundColor(.white)
       
        
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
    
        _ = textField.setShadow(shadowColor: #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1), shadowOffset: .zero, shadowRadius: 0, shadowOpacity: 0)
        .setBackgroundColor(#colorLiteral(red: 0.984384954, green: 0.9844953418, blue: 0.9843212962, alpha: 1))

        
        return true
    }
    
    
}

