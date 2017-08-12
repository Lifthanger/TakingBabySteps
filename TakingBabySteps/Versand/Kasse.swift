//
//  Kasse.swift
//  TakingBabySteps
//
//  Created by Jan Bauer on 12.08.17.
//

class Kasse {
    private let preise: [Obst: Int]

    init() {
        preise = [.apfel: 50]
    }

    func gesamtPreis(vonWarenkorb warenkorb: Warenkorb) -> Int {
        return warenkorb.getInhalt.reduce(0) { summe, ware in
            return summe + ware.menge * (preise[ware.obst] ?? 0)
        }
    }
}
