//
//  ViewController.swift
//  HelloWorld
//
//  Created by Vu Van Tien on 12/1/2560 BE.
//  Copyright © 2560 BE MyStudio. All rights reserved.
//
import Foundation
import UIKit

class HelloWorldVC : BaseVC,  HelloView{
    
    @IBOutlet weak var lblHelloWorld: UILabel!
    
    var presenter: HelloWorldPresenter!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        presenter.attachView(self)
        self.lblHelloWorld.text = presenter.getHelloWorld()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        presenter.detachView()
        super.viewDidDisappear(animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

