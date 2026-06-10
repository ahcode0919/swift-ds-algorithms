//
//  CenturyFromYearTests.swift
//  swift-algorithmsTests
//
//  Created by Aaron on 6/5/18.
//

import Testing
@testable import swift_ds_algorithms

struct CenturyFromYearTests {

    @Test func testCenturyFromYear() {
        var century = CenturyFromYear.centuryFromYear(year: 1905)
        #expect(century == 20)

        century = CenturyFromYear.centuryFromYear(year: 1700)
        #expect(century == 17)

        century = CenturyFromYear.centuryFromYear(year: 1)
        #expect(century == 1)
    }
}
