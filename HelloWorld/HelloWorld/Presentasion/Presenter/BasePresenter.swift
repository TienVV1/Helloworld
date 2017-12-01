//
//  BasePresenter.swift
//  HelloWorld
//
//  Created by Vu Van Tien on 12/1/2560 BE.
//  Copyright © 2560 BE MyStudio. All rights reserved.
//

class BasePresenter: Presenter {
    typealias T = BaseView
    
    var view: BaseView?
    
    func attachView(_ view: BaseView) {
        self.view = view
    }
    
    func detachView() {
        self.view = nil
    }
    
}

