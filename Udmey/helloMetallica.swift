//
//  helloMetallica.swift
//  Udmey
//
//  Created by Pushpanshu Ranjan Singh on 29/06/20.
//  Copyright © 2020 Pushpanshu Ranjan Singh. All rights reserved.
//

import SwiftUI

struct helloMetallica: View {
    
    var image: Image
    var body: some View {
        VStack{
        image
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width:UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.3)//Dynamic Ratio changed according to screen
        .clipShape(Circle())
        .overlay(Circle().stroke(Color.white, lineWidth: 6))
        .shadow(radius: 10)
        
        HStack{
            Text("Hello")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.horizontal, 15)
                .background(Color("proOrange"))
                .foregroundColor(Color.white)
            
            Text("Metallica")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.horizontal, 15)
                .background(Color("proShip"))
                .foregroundColor(Color.white)
        }
        .padding(.horizontal,12)
            .padding(.vertical, 10)
            .background(Color("proGreen"))
        .cornerRadius(5)
        }
        
    }
}

struct helloMetallica_Previews: PreviewProvider {
    static var previews: some View {
        helloMetallica(image: Image("Metallica"))
    }
}
