//
//  ContentView.swift
//  FinalProjectGoalTracker
//
//  Created by Aanya Malyala on 7/29/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack {
                Image("color 3")
                    .resizable()
                    .ignoresSafeArea()
                VStack (spacing: 40) {
                    Image("logo")
                        .cornerRadius(45)
                        .overlay(
                            RoundedRectangle(cornerRadius: 45)
                                .stroke(Color.black, lineWidth: 0.5)
                            )
                        .shadow(color: .black.opacity(0.3), radius: 4, x: 2, y: 4)
                    Text("A goal tracker as simple as your ambitions are big!")
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                    NavigationLink(destination: SecondView()) {
                        Text("let's get started")
                            .bold()
                            .foregroundStyle(.black)
                            .background(
                              RoundedRectangle(cornerRadius: 45)
                                .fill(Color.pink.opacity(0.3))
                                .frame(width: 150, height: 90)
                                .overlay(
                                        RoundedRectangle(cornerRadius: 45)
                                            .stroke(Color.black, lineWidth: 0.5)
                                        
                                
                        )
                                .shadow(color: .black.opacity(0.3), radius: 4, x: 2, y: 4)
                              )
                    }
                    .padding(60)
                }
            }
        }
    }
}
#Preview {
    ContentView()
}
