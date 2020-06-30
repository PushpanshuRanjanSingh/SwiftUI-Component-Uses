//
//  TravelListView.swift
//  Udmey
//
//  Created by Pushpanshu Ranjan Singh on 30/06/20.
//  Copyright © 2020 Pushpanshu Ranjan Singh. All rights reserved.
//

import SwiftUI

struct TravelListView: View {
    var body: some View {
        List(TravelArray){ travel in
            NavigationLink(destination: TravelListDetailView(chosenTravel: travel)) {
                Text(travel.name)
            }
        }
    }
}

struct TravelListView_Previews: PreviewProvider {
    static var previews: some View {
        TravelListView()
    }
}
