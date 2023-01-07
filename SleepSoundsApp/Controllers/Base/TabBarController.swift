//
//  TabBarController.swift
//  SleepSoundsApp
//
//  Created by Sanzhar Zhubatkhanov on 04.01.2023.
//

import UIKit

enum Tabs: Int {
    case sleep
    case composer
    case settings
}

final class TabBarController: UITabBarController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure() {
        tabBar.tintColor = Resources.Colors.active
        tabBar.barTintColor = Resources.Colors.inactive
        tabBar.backgroundColor = Resources.Colors.bgColorTabBar
        
        let sleepController = SleepController()
        let composerController = ComposerController()
        let settingsController = SettingsController()
        
        let sleepNavigation = NavBarController(rootViewController: sleepController)
        let composerNavigation = NavBarController(rootViewController: composerController)
        let settingsNavigation = NavBarController(rootViewController: settingsController)
        
        sleepNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.sleep,
                                                  image: Resources.Images.TabBar.sleep,
                                                  tag: Tabs.sleep.rawValue)
        
        composerNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.composer,
                                                  image: Resources.Images.TabBar.composer,
                                                  tag: Tabs.composer.rawValue)
        
        settingsNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.settings,
                                                  image: Resources.Images.TabBar.settings,
                                                  tag: Tabs.settings.rawValue)
        
        setViewControllers([
            sleepNavigation,
            composerNavigation,
            settingsNavigation
        ],
                           animated: false)
    }
}
