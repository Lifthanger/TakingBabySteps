//
//  KasseTest.swift
//  TakingBabyStepsTests
//
//  Created by Jan Bauer on 12.08.17.
//

import XCTest

@testable import TakingBabySteps

class  KasseTest: XCTestCase {

    private var kasse: Kasse!

    override func setUp() {
        kasse = Kasse()
    }

    func testPreisVonZweiAepfeln() {
        let warenkorb = Warenkorb()
        warenkorb.add(ware: Ware(menge: 2, obst: .apfel))

        let preis = kasse.gesamtPreis(vonWarenkorb: warenkorb)

        XCTAssertEqual(preis, 100)
    }
}
