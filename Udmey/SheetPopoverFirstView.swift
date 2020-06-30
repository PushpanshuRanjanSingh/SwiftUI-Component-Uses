
//
//  SheetPopoverFirstView.swift
//  Udmey
//
//  Created by Pushpanshu Ranjan Singh on 30/06/20.
//  Copyright © 2020 Pushpanshu Ranjan Singh. All rights reserved.
//

import SwiftUI

struct SheetPopoverFirstView: View {
    @State var shown = false
    @State var number = 1
    var body: some View {
        ZStack{
            Color.white
                .edgesIgnoringSafeArea(.all)
            
            HStack{
                
                Button(action: {
                    self.number -= 1
                }) {
                    Text("-")
                }
                .font(.largeTitle)
                .disabled(self.number < 1)
                
                Text(String(number))
                    .font(.largeTitle)
                
                Button(action: {
                    self.number += 1
                }) {
                    Text("+")
                }
                .font(.largeTitle)
                
                
            }//Hstack
                .offset(y:-80)
                .padding()
            
            VStack {
                
                Text("Welcome on First Screen")
                    .foregroundColor(Color.white)
                    .font(.custom("size-12", size: 20))
                    .padding()
            }//Vstack
                .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.1)
                .background(Color("proMegenta"))
                .clipShape(Rectangle())
                .overlay(Rectangle().stroke(Color.white, lineWidth: 10))
                .cornerRadius(10)
                .shadow(radius: 10)
            
            VStack{
                Button(action: {
                    if self.number > 5{
                        self.shown.toggle()
                    }
                }) {
                    Text("Go to Second Page")
                }.sheet(isPresented: $shown) { () -> SheetPopoverSecondView in
                    return SheetPopoverSecondView()
                }
                
            }// Vstack
                .offset(y: 80)
            
            
            
            
            
        }//Zstack
    }
}

struct SheetPopoverFirstView_Previews: PreviewProvider {
    static var previews: some View {
        SheetPopoverFirstView()
    }
}
