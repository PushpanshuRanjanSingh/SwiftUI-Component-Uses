//
//  Modal.swift
//  Udmey
//
//  Created by Pushpanshu Ranjan Singh on 30/06/20.
//  Copyright © 2020 Pushpanshu Ranjan Singh. All rights reserved.
//

import SwiftUI

struct Musician : Identifiable {
    var id = UUID()
    var genre: String
    var bands: [String]
}

let rock = Musician(genre: "Rock", bands: ["Deep Purple", "Led Zeppelin", "Pink Floyd"])
let metal = Musician(genre: "Metal", bands: ["Metallica", "Megadeth", "Iron Maiden"])
let pop = Musician(genre: "Pop", bands: ["Madonnda", "Rihanna", "Beyonce"])

let musicianArray = [rock, metal, pop]
