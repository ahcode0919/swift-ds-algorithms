//
//  CenturyFromYear.swift
//  swift-algorithms
//
//  Created by Aaron on 6/5/18.
//

import Foundation

public class CenturyFromYear {
    public static func centuryFromYear(year: Int) -> Int {
        let hundreths = Double(year) / 100
        return Int(hundreths.rounded(.up))
    }
}
