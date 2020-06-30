//
//  SheetPopoverSecondView.swift
//  Udmey
//
//  Created by Pushpanshu Ranjan Singh on 30/06/20.
//  Copyright © 2020 Pushpanshu Ranjan Singh. All rights reserved.
//

import SwiftUI

struct SheetPopoverSecondView: View {
    var body: some View {
            ZStack{
                Color.white
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    
                    Text("Welcome on Second Screen")
                        .foregroundColor(Color.white)
                        .font(.custom("size-12", size: 20))
                        .padding()
                }
                .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.1)
                .background(Color("proSpiro"))
                .clipShape(Rectangle())
                .overlay(Rectangle().stroke(Color.white, lineWidth: 10))
                .cornerRadius(10)
                .shadow(radius: 10)
            }
    }
}

struct SheetPopoverSecondView_Previews: PreviewProvider {
    static var previews: some View {
        SheetPopoverSecondView()
    }
}
