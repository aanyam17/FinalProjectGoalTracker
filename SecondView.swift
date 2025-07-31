//
//  SecondView.swift
//  FinalProjectGoalTracker
//
//  Created by Roshal Sebastian on 7/30/25.
//


import SwiftUI
struct SecondView: View {
    var body: some View {
        NavigationStack{
            
            ZStack{
                Image("color 4")
                    .resizable()
                    .ignoresSafeArea()
                VStack(spacing: 40) {
                    NavigationLink(destination: CreateGoalView()) {
                        Circle()
                            .fill(Color(red: 0.89, green: 0.61, blue: 0.62)) //divide by 255
                            .frame(width: 200, height: 200)
                            .position(x: 190, y: 200)
                            .overlay(
                                Circle()
                                    .stroke(Color.black, lineWidth: 0.5)
                                    .frame(width: 200, height: 200)
                                    .position(x: 190, y: 200)
                            )
                    }
                    
                    .shadow(color: .black.opacity(0.3), radius: 4, x: 2, y: 4)
                    Circle()
                        .fill(Color(red: 0.89, green: 0.61, blue: 0.62))
                        .frame(width: 200, height: 200)
                        .position(x: 190, y: 150)
                        .overlay(
                            Circle()
                                .stroke(Color.black, lineWidth: 0.5)
                                .frame(width: 200, height: 200)
                                .position(x: 190, y: 150)
                            
                            
                        )
                        .shadow(color: .black.opacity(0.3), radius: 4, x: 2, y: 4)
                }
                .padding()
            }
        }
    }
}
   
    #Preview {
        SecondView()
    }
    

