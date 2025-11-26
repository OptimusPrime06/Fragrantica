//
//  ContentView.swift
//  Fragrantica
//
//  Created by Gulliver Raed on 11/25/25.
//

import SwiftUI

struct LaunchScreen: View {
    
    @State private var launchScreenTimeEnded = false
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.appPrimaryAccent, .appBackground, .appPrimaryAccent], startPoint: .bottom, endPoint: .top)
                .ignoresSafeArea()
            
            Image(.fragranticaLaunchScreen)
                .resizable()
                .scaledToFit()
                .padding(.all, 24)
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5, execute: {
                launchScreenTimeEnded = true
            })
        }
        .fullScreenCover(isPresented: $launchScreenTimeEnded) {
            MainTabBarView()
        }
    }
}

#Preview {
    LaunchScreen()
}
