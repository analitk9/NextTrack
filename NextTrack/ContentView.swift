//
//  ContentView.swift
//  NextTrack
//
//  Created by Denis Evdokimov on 12/5/23.
//

import SwiftUI

extension AnyTransition {
    static var moveAndFade: AnyTransition {
        AnyTransition(.scale.combined(with:.opacity))
    }
}

struct ContentView: View {
    @State private var isNextTrack = false

    var body: some View {
        Button(action: {
            isNextTrack = false
            withAnimation(.interpolatingSpring(stiffness: 50, damping: 10).speed(2)) {
                isNextTrack.toggle()
            }
        }) {
            HStack(spacing: -6){
                if isNextTrack {
                    Image(systemName: "play.fill")
                        .transition(.moveAndFade)
                }
                Image(systemName: "play.fill")
                if !isNextTrack {
                    Image(systemName: "play.fill")
                        .transition(.moveAndFade)
                }
            }
            .font(.largeTitle)
        }
        
    }
}

#Preview {
    ContentView()
}
