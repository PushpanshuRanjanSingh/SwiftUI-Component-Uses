//
//  ListView.swift
//  Udmey
//
//  Created by Pushpanshu Ranjan Singh on 30/06/20.
//  Copyright © 2020 Pushpanshu Ranjan Singh. All rights reserved.
//

import SwiftUI

struct ListView: View {
    let myArray = ["Sudhanshu", "Pushpanshu", "Divyanshu", "Priyanshu", "Ritanshu", "Amritanshu"]
    @State var characterName = "Ranjan"
    var body: some View {
        
            VStack{
//                 */
//                List(myArray, id: \.self){items  in
//                    Text(items)
//                } // Type - 2 of List
                Text(characterName)
                    .font(.headline)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
                    .padding()
                    .background(Color("proGreen"))
                    .cornerRadius(5)
                    
                Button(action: {
                    if self.characterName == "Ranjan"{
                        self.characterName = "Singh"
                    }
                    else{
                        self.characterName = "Ranjan"
                    }
                    
                    }){
                    Text("Change Title").padding()
                }
                
                TextField("Name", text: $characterName) // binding name ->  replace value in realtime
                
                List{
                    ForEach(myArray, id: \.self){ item in
                        Text(item).foregroundColor(Color.orange)
                    }
                } // Type - 1 of List
                
            }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
