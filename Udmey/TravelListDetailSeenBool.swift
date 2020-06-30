//
//  TravelListDetailSeenBool.swift
//  Udmey
//
//  Created by Pushpanshu Ranjan Singh on 30/06/20.
//  Copyright © 2020 Pushpanshu Ranjan Singh. All rights reserved.
//

import SwiftUI

struct TravelListDetailSeenBool: View {
    
    @Binding var seenOrNot : Bool
    
    var body: some View {
        Button(action: {
            self.seenOrNot.toggle()
        }) {
            Text(self.seenOrNot ? "Seen" : "Unseen")
        }
    }
}

struct TravelListDetailSeenBool_Previews: PreviewProvider {
    static var previews: some View {
        Text("Testing Binding Button")
    }
}
