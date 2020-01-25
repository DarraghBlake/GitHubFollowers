//
//  Date+Ext.swift
//  GitHubFollowers
//
//  Created by Darragh Blake on 25/01/2020.
//  Copyright © 2020 Darragh Blake. All rights reserved.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormetter = DateFormatter()
        dateFormetter.dateFormat = "MMM yyyy"
        return dateFormetter.string(from: self)
    }
    
}
