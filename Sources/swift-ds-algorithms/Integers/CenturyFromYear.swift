//
//  CenturyFromYear.swift
//  swift-algorithms
//
//  Created by Aaron Hinton on 6/5/18.
//  Copyright © 2018 No Name Software. All rights reserved.
//

import Foundation

public class CenturyFromYear {
    public static func centuryFromYear(year: Int) -> Int {
        let hundreths = Double(year) / 100
        return Int(hundreths.rounded(.up))
    }
}
