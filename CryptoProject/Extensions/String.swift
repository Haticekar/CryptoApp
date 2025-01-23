//
//  String.swift
//  CryptoProject
//
//  Created by Hatice Kar on 13.01.2025.
//

import Foundation

extension String{
    var removingHTMLOccurances : String{
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
