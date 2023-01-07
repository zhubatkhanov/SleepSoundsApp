//
//  BaseController.swift
//  SleepSoundsApp
//
//  Created by Sanzhar Zhubatkhanov on 06.01.2023.
//

import UIKit

class BaseController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
}

@objc extension BaseController {
    
    func addView(){}
    func layoutViews(){}
    func configure(){
        view.backgroundColor = Resources.Colors.mainBgColor
    }
}
