//
//  BasicView.swift
//  HelloWorld
//
//  Created by Vu Van Tien on 12/1/2560 BE.
//  Copyright © 2560 BE MyStudio. All rights reserved.
//

import Foundation

import Foundation

@objc protocol BaseView {
    
    /// occurred when user tap on navigation title
    @objc optional func onTapTitleView()
    
    /// occurred when user tap on tabbar item
    @objc optional func onTapTabBarItem()
}
