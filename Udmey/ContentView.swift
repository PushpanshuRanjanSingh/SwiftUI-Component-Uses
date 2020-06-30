//
//  ContentView.swift
//  Udmey
//
//  Created by Pushpanshu Ranjan Singh on 29/06/20.
//  Copyright © 2020 Pushpanshu Ranjan Singh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(destination: NavigationFirstView()){
                    Text("Click Me")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .padding(.horizontal, 15)
                        .background(Color("proBlue"))
                        .foregroundColor(Color.white)
                }
                }.navigationBarTitle("Udmey")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
