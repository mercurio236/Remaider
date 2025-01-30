//
//  String+Ext.swift
//  Remaider
//
//  Created by Arley Souto on 30/01/25.
//

import Foundation

extension String {
    var localized: String {
        NSLocalizedString(self, comment: "")
    }
}
