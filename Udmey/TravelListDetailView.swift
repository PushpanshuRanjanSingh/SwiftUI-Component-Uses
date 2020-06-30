//
//  Travel.swift
//  Udmey
//
//  Created by Pushpanshu Ranjan Singh on 30/06/20.
//  Copyright © 2020 Pushpanshu Ranjan Singh. All rights reserved.
//

import SwiftUI

struct TravelListDetailView: View {
    var chosenTravel: TravelCheckModel
    @State var seen = false
    var body: some View {
        VStack{
            Text(chosenTravel.name)
                .font(.largeTitle)
                .padding()
                .foregroundColor(self.seen ? .purple : .black)
            
            Text(chosenTravel.description)
                .font(.headline)
                .padding()
            
//            Button(action: {
//                self.seen.toggle()
//                self.watch.toggle()
//            }) {
//                Text(self.watch ? "Seen" : "Unseen")
//            }
            TravelListDetailSeenBool(seenOrNot: $seen)
        }
    }
}

struct Travel_Previews: PreviewProvider {
    static var previews: some View {
        TravelListDetailView(chosenTravel: TravelCheck1)
    }
}
