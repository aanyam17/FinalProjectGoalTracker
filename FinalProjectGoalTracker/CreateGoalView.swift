//
//  CreateGoalView.swift
//  FinalProjectGoalTracker
//
//  Created by Aanya Malyala on 7/30/25.
//

import SwiftUI

struct CreateGoalView: View {
    var body: some View {
        VStack {
                Text("My Goals")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                    .foregroundColor(Color(red: 0.886, green: 0.612, blue: 0.620))
            Spacer()
            Button(action:  {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }) {
                Text("Add New Goal")
                    .font(.headline)
                    .foregroundColor(Color(red: 0.710, green: 0.086, blue: 0.196)) //text color
                    .padding()
                    .background(Color(red: 0.886, green: 0.612, blue: 0.620)) //background color
                    .cornerRadius(12) //rounded edges
            }
        }
        .padding()
        
    }
}

#Preview {
    CreateGoalView()
}
