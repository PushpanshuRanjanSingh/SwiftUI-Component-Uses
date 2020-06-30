//
//  TravelCheckModel.swift
//  Udmey
//
//  Created by Pushpanshu Ranjan Singh on 30/06/20.
//  Copyright © 2020 Pushpanshu Ranjan Singh. All rights reserved.
//

import SwiftUI

struct TravelCheckModel: Identifiable {
    var id = UUID()
    var name: String
    var description: String
}

var TravelCheck1 = TravelCheckModel(name: "India", description: " 🇮🇳 My Nation ❤️")
var TravelCheck2 = TravelCheckModel(name: "Pakistan", description: "Son of India")
var TravelCheck3 = TravelCheckModel(name: "Bangkok", description: "Ye Wahi h! Samjh rahe ho ")
var TravelCheck4 = TravelCheckModel(name: "China", description: "CKMKB ye Chutiya h")
var TravelCheck5 = TravelCheckModel(name: "Paris", description: "Kv Aana Padega")

var TravelArray = [TravelCheck1, TravelCheck2, TravelCheck3, TravelCheck4, TravelCheck5]

