//
//  Resources.swift
//  SleepSoundsApp
//
//  Created by Sanzhar Zhubatkhanov on 04.01.2023.
//

import UIKit

enum Resources {
    enum Colors {
        static var active = UIColor(hexString: "#4870FF")
        static var inactive = UIColor(hexString: "#b3b3b3")
        static var bgColorTabBar = UIColor(hexString: "#21283F")
        static var mainBgColor = UIColor(hexString: "#141927")
    }
    
    enum Strings {
        enum TabBar {
            static var sleep = "Sleep"
            static var composer = "Composer"
            static var settings = "Settings"
        }
    }
    
    enum Images {
        enum TabBar {
            static var sleep = UIImage(named: "sleep_tab")
            static var composer = UIImage(named: "composer_tab")
            static var settings = UIImage(named: "settings_tab")
        }
    }
    
    enum Fonts {
        static func navBarTitleFont (with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
}
