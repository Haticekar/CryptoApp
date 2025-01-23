//
//  UIApplication.swift
//  CryptoProject
//
//  Created by Hatice Kar on 11.12.2024.
//

import Foundation
import SwiftUI

extension UIApplication{
    func endEditing(){
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
