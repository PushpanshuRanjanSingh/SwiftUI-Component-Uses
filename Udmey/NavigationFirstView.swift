//
//  NavigationFirstView.swift
//  Udmey
//
//  Created by Pushpanshu Ranjan Singh on 29/06/20.
//  Copyright © 2020 Pushpanshu Ranjan Singh. All rights reserved.
//

import SwiftUI

struct NavigationFirstView: View {
    var body: some View {
        VStack{
            helloMetallica(image: Image("Metallica"))
            
            NavigationLink(destination: NavigationSecondView()){
                Text("NavigationSecondView")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .padding()
//                    .background(Color("proBlue"))
                    .foregroundColor(Color("proBlue"))
            }
            
            NavigationLink(destination: ListSectionView()){
                Text("ListSectionView")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .padding()
//                    .background(Color("proBlue"))
                    .foregroundColor(Color("proBlue"))
            }
            
            NavigationLink(destination: ListView()){
                Text("ListView")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .padding()
//                    .background(Color("proBlue"))
                    .foregroundColor(Color("proBlue"))
            }
            
            NavigationLink(destination: TravelListView()){
                Text("TravelListView")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .padding()
//                    .background(Color("proBlue"))
                    .foregroundColor(Color("proBlue"))
            }
            
            NavigationLink(destination: SheetPopoverFirstView()){
                            Text("SheetPopoverFirstView")
                                .font(.headline)
                                .fontWeight(.semibold)
                                .padding()
            //                    .background(Color("proBlue"))
                                .foregroundColor(Color("proBlue"))
                        }
            
            
            
        }
        .navigationBarTitle("Udmey")
    }
}

struct NavigationFirstView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationFirstView()
    }
}
