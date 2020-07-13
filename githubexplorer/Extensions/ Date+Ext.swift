//
//  Date+Ext.swift
//  githubexplorer
//
//  Created by Amit Biswas on 7/12/20.
//  Copyright © 2020 Amit Biswas. All rights reserved.
//

import Foundation


extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
}
