//
//  ContentView.swift
//  FinalProjectGoalTracker
//
//  Created by Aanya Malyala on 7/29/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
roshal-dev
        NavigationStack{
            ZStack {
                Image("color 3")
                    .resizable()
                    .ignoresSafeArea()
                VStack (spacing: 40) {
                    Image("logo")
                        .cornerRadius(45)
                    Text("A goal tracker as simple as your ambitions are big!")
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                    NavigationLink(destination: SecondView()) {
                        Text("Click me")
                            .bold()
                            .foregroundStyle(.pink)
                        
                    }
                    .padding()
                }
            }

        VStack {
            

        }
    }
}
#Preview {
    ContentView()
}
