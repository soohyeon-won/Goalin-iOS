//
//  AppBar.swift
//  Goalin
//
//  Created by wonsoohyeon on 12/01/2020.
//  Copyright © 2020 Soohyeon Won. All rights reserved.
//

import Foundation
import SnapKit

class AppBarView: UIView {
    
    var titleLabel: UILabel = UILabel()
    var rightButton: UIButton = UIButton()
    var leftButton: UIButton = UIButton()
    
    func initAppBarView(_ title: String,
                        _ leftImageButtonName: Icon = .back,
                        _ rightImageButtonName: Icon = .menu) {
        backgroundColor = UIUtil.UIColorFromRGB(Color.Main.rawValue)
        self.snp.makeConstraints { (make) in
            make.top.left.bottom.right.equalToSuperview()
        }
        initButton(leftImageButtonName, rightImageButtonName)
        initTitleLabel(title)
    }
    
    private func initButton(_ leftImageButtonName: Icon = .back,
                            _ rightImageButtonName: Icon = .menu) {
        /* Drawer Menu Button */
        rightButton.setImage(UIImage(named: rightImageButtonName.rawValue), for: .normal)
        addSubview(rightButton)
        rightButton.imageEdgeInsets = UIEdgeInsets(top: 11, left: 16, bottom: 11, right: 16)
        rightButton.snp.makeConstraints { (make) in
            make.top.bottom.right.equalToSuperview()
            make.width.equalTo(56)
        }
        
        /* Navigation Button */
        leftButton.setImage(UIImage(named: leftImageButtonName.rawValue), for: .normal)
        addSubview(leftButton)
        leftButton.imageEdgeInsets = UIEdgeInsets(top: 11, left: 16, bottom: 11, right: 16)
        leftButton.snp.makeConstraints { (make) in
            make.top.bottom.left.equalToSuperview()
            make.width.equalTo(56)
        }
    }
    
    func hiddenRightButton(isHidden: Bool) {
        rightButton.isHidden = isHidden
    }
    
    func hiddenLeftButton(isHidden: Bool) {
        leftButton.isHidden = isHidden
        leftButton.snp.makeConstraints { (make) in
            make.width.equalTo(isHidden ? 16 : 56)
        }
    }
    
    private func initTitleLabel(_ title: String) {
        addSubview(titleLabel)
        titleLabel.text = title
        titleLabel.textColor = .white
        titleLabel.snp.makeConstraints { (make) in
            make.top.bottom.equalToSuperview()
            make.left.equalTo(leftButton.snp.right).offset(16)
        }
    }
    
}
