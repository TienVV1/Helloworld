//
//  HelloWorldReposImpl.swift
//  HelloWorld
//
//  Created by Vu Van Tien on 12/1/2560 BE.
//  Copyright © 2560 BE MyStudio. All rights reserved.
//

import Foundation

class HelloWorldReposImpl: HelloWorldRepos {
    func getHelloWorld() -> String {
        return HelloWorldApi.helloWorld
    }
}
