//
//  NavBarController.swift
//  SleepSoundsApp
//
//  Created by Sanzhar Zhubatkhanov on 06.01.2023.
//

import UIKit

final class NavBarController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    private func configure() {
        view.backgroundColor = Resources.Colors.mainBgColor
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [
            .foregroundColor: UIColor.white,
            .font: Resources.Fonts.navBarTitleFont(with: 20)
        ]
    }
}
