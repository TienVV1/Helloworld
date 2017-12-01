//
//  AppDIContainer.swift
//  HelloWorld
//
//  Created by Vu Van Tien on 12/1/2560 BE.
//  Copyright © 2560 BE MyStudio. All rights reserved.
//

import Swinject
import SwinjectStoryboard

class AppDIContainer {
    
    static let instance = AppDIContainer()
    
    let main: Container = SwinjectStoryboard.defaultContainer
    private init() {
        setupMain()
    }
    
    private func setupMain() {
        main.register(HelloWorldRepos.self) { _ in
            HelloWorldReposImpl()
        }
        
        main.register(HelloWorldUC.self) { r in
            HelloWorldUC(r.resolve(HelloWorldRepos.self)!)
        }
        
        main.register(HelloWorld.self) { r in
            let controller = HelloWorld()
            controller.presenter = HelloWorldPresenter(r.resolve(HelloWorldUC.self)!)
            return controller
        }
    }
}
