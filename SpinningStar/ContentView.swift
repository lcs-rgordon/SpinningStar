//
//  ContentView.swift
//  SpinningStar
//
//  Created by Russell Gordon on 2022-04-27.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties
    @State var selected = false
    
    // MARK: Computed properties
    var body: some View {
        Image(systemName: selected ? "star.fill" : "star")
            .resizable()
            .frame(width: 40, height: 40)
            .foregroundColor(.yellow)
            .onTapGesture {
                selected = true
            }
        
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
