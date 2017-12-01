//
//  HelloWorldPresenter.swift
//  HelloWorld
//
//  Created by Vu Van Tien on 12/1/2560 BE.
//  Copyright © 2560 BE MyStudio. All rights reserved.
//

class HelloWorldPresenter: Presenter {
    
    var view: HelloView?
    var helloUC:HelloWorldUC
    
    init(_ helloUC:HelloWorldUC) {
        self.helloUC = helloUC
    }
    func attachView(_ view: HelloView) {
        self.view = view
    }
    
    func detachView() {
        self.view = nil
    }
    
    func getHelloWorld() -> String{
        return helloUC.exe()
    }
    
}

