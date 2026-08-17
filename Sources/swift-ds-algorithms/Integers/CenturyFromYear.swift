//
//  CenturyFromYear.swift
//  swift-algorithms
//
//  Created by Aaron on 6/5/18.
//

import Foundation

public class CenturyFromYear {
    /// Given a year, return the century it is in. The first century spans from the year
    /// 1 up to and including the year 100, the second - from the year 101 up to and
    /// including the year 200, etc.
    ///
    /// Example:
    /// * For `year = 1905`, the output should be `centuryFromYear(year) = 20`
    /// * For `year = 1700`, the output should be `centuryFromYear(year) = 17`
    ///
    /// - Parameter year: A positive integer, designating the year.
    /// - Returns: The number of the century the year is in.
    public static func centuryFromYear(year: Int) -> Int {
        let hundreths = Double(year) / 100
        return Int(hundreths.rounded(.up))
    }
}
