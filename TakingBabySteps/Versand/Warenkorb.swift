//
//  Warenkorb.swift
//  TakingBabySteps
//
//  Created by Jan Bauer on 12.08.17.
//

class Warenkorb {
    private var inhalt = [Ware]()

    func add(ware: Ware) {
        inhalt.append(ware)
    }

    var getInhalt: [Ware] {
        return inhalt
    }
}
