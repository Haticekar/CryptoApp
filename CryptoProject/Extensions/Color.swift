//
//  Color.swift
//  CryptoProject
//
//  Created by Hatice Kar on 6.12.2024.
//

import Foundation
import SwiftUI

extension Color {
    static let theme = ColorTheme()
    static let launch = LaunchTheme()
}

struct ColorTheme{
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let green = Color("GreenColor")
    let red = Color("RedColor")
    let secondaryText = Color("SecondaryTextColor")
}

struct ColorTheme2{
    let accent = Color(UIColor(_colorLiteralRed: 178, green: 255, blue: 255, alpha: 0))
    let background = Color(UIColor(_colorLiteralRed: 0, green: 123, blue: 167, alpha: 0))
    let green = Color(UIColor(_colorLiteralRed: 46, green: 139, blue: 87, alpha: 0))
    let red = Color(UIColor(_colorLiteralRed: 128, green: 0, blue: 0, alpha: 0))
    let secondaryText = Color(UIColor(_colorLiteralRed: 192, green: 192, blue: 192, alpha: 0))
}

struct LaunchTheme{
    let accent = Color("LaunchAccentColor")
    let background = Color("LaunchBackgroundColor")
    
}
