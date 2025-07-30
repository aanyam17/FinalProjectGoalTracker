//
//  CreateGoalView.swift
//  FinalProjectGoalTracker
//
//  Created by Aanya Malyala on 7/30/25.
//

import SwiftUI

struct CreateGoalView: View {
    @State private var showButton = true
    @State private var showNewGoal = false
    var body: some View {
        VStack {
            Text("My Goals")
                .font(.system(size: 40))
                .fontWeight(.black)
                .foregroundColor(Color(red: 0.886, green: 0.612, blue: 0.620))
            Spacer()
            Button(action: {
                   withAnimation {
                     showNewGoal = true
                   }
                 }) {
                   Text("Add New Goal")
                     .foregroundColor(Color(red: 0.710, green: 0.086, blue: 0.196))
                     .bold()
                     .foregroundStyle(.black)
                     .background(
                       RoundedRectangle(cornerRadius: 45)
                         .fill(Color.pink.opacity(0.3))
                         .frame(width: 150, height: 90)
                         .overlay(
                           RoundedRectangle(cornerRadius: 45)
                             .stroke(Color(red: 0.710, green: 0.086, blue: 0.196), lineWidth: 0.5)))
            }
                }
            .padding()
            if showNewGoal {
                NewGoalPopUp()
            }
        }
    }
        
        

#Preview {
    CreateGoalView()
}
