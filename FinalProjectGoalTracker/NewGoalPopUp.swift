//
//  NewGoalPopUp.swift
//  FinalProjectGoalTracker
//
//  Created by Aanya Malyala on 7/30/25.
//

import SwiftUI

struct NewGoalPopUp: View {
    var body: some View {
        VStack {
            Text("New Goal")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.886, green: 0.612, blue: 0.620))
            TextField("Enter your goal here...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding()
                .cornerRadius(12)
                .padding()
            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                Text("Is it important?")
            }
            Button {
                
            } label: {
                Text("Save")
                    .foregroundColor(Color(red: 0.886, green: 0.612, blue: 0.620))
            }
        }
        .padding()
    }
}

#Preview {
    NewGoalPopUp()
}
