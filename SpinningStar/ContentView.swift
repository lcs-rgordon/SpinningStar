//
//  ContentView.swift
//  SpinningStar
//
//  Created by Russell Gordon on 2022-04-27.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties
    @State var emptyStarOpacity = 1.0
    @State var filledStarOpacity = 0.0
    
    // MARK: Computed properties
    var body: some View {
        
        ZStack {

            // Filled star
            Image(systemName: "star.fill")
                .resizable()
                .frame(width: 40, height: 40)
                .foregroundColor(.yellow)
                .opacity(filledStarOpacity)
                .onTapGesture {
                    withAnimation(
                        Animation.easeInOut(duration: 1.0)
                    ) {
                        // Empty star fades in
                        emptyStarOpacity = 1.0
                        // Filled star fades away
                        filledStarOpacity = 0.0
                    }
                }
            
            // Empty star
            Image(systemName: "star")
                .resizable()
                .frame(width: 40, height: 40)
                .foregroundColor(.yellow)
                .opacity(emptyStarOpacity)
                .onTapGesture {
                    withAnimation(
                        Animation.easeInOut(duration: 1.0)
                    ) {
                        // Empty star fades away
                        emptyStarOpacity = 0.0
                        // Filled star fades in
                        filledStarOpacity = 1.0
                    }
                }

        }
        
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
