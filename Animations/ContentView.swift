//
//  ContentView.swift
//  Animations
//
//  Created by Nate Lee on 7/8/20.
//  Copyright © 2020 Nate Lee. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 0.0
    
    var body: some View {
        VStack {
            Button("Tap Me") {
                withAnimation(Animation.interpolatingSpring(stiffness: 40, damping: 5)) {
                    self.animationAmount += 360
                }
            }
            .padding(50)
            .background(Color.red)
            .foregroundColor(.white)
            .clipShape(Circle())
            .rotation3DEffect(Angle(degrees: animationAmount), axis: (x: 0, y: 1, z: 0))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
