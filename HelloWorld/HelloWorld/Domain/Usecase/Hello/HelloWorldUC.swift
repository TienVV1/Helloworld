//
//  HelloWorldUC.swift
//  HelloWorld
//
//  Created by Vu Van Tien on 12/1/2560 BE.
//  Copyright © 2560 BE MyStudio. All rights reserved.
//

import Foundation

class HelloWorldUC {
    var repos: HelloWorldRepos
    
    init(_ repos: HelloWorldRepos) {
        self.repos = repos
    }
    
    func exe() ->String{
        return repos.getHelloWorld()
    }
}
