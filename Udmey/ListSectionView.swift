//
//  ListSectionView.swift
//  Udmey
//
//  Created by Pushpanshu Ranjan Singh on 30/06/20.
//  Copyright © 2020 Pushpanshu Ranjan Singh. All rights reserved.
//

import SwiftUI

struct ListSectionView: View {
    var body: some View {
        List{
            ForEach(musicianArray){ musician in
                Section(header: Text(musician.genre)){
                    ForEach(musician.bands, id: \.self){ band in
                        Text(band)
                    }
                }
            }
        }
    }
}

struct ListSectionView_Previews: PreviewProvider {
    static var previews: some View {
        ListSectionView()
    }
}
