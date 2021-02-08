//
//  ContentView.swift
//  wheelofcheesepractice
//
//  Created by Jeffery Mason on 2/6/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var selected : Int = 0
    
    var body: some View {

        VStack {
            
            Text("Wheel of Cheese")
                .font(.system(size: 45))
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
                .padding(.top, 50)
            
            TabView(selection: $selected) {
            
                ForEach(1...4,id: \.self) { index in
                    
                    GeometryReader { reader in
                        Image("p\(index)")
                            .resizable()
                            .frame(width: 400.0, height: 400.0)
                            .aspectRatio(contentMode: .fill)
                            .offset(x: -reader.frame(in: .global).minX)
                        
                    }
                    .frame(height: 400.0)
                    .cornerRadius(15)
                    .padding(10)
                    .background(Color.white)
                    .cornerRadius(15)
                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 5, y: 5 )
                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: -5, y: 5 )
                    .padding(.horizontal,25)
                
                }
            }
            
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
