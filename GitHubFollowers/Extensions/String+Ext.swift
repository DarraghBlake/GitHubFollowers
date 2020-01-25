//
//  String+Ext.swift
//  GitHubFollowers
//
//  Created by Darragh Blake on 25/01/2020.
//  Copyright © 2020 Darragh Blake. All rights reserved.
//

import Foundation

extension String {
    
    func converttoDate() -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.timeZone = .current
        
        return dateFormatter.date(from: self)
    }
    
    func convertToDisplayFormat() -> String {
        guard let date = self.converttoDate() else { return "N/A" }
        return date.convertToMonthYearFormat()
    }
}
