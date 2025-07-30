//
//  NewGoalPopUp.swift
//  FinalProjectGoalTracker
//
//  Created by Aanya Malyala on 7/30/25.
//

import SwiftUI
import SwiftData

struct NewGoalPopUp: View {
    @Binding var showNewGoal: Bool
    @Bindable var goalItem: GoalItem
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        VStack {
            Text("New Goal")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.886, green: 0.612, blue: 0.620))
            TextField("Enter your goal here...", text: $goalItem.title, axis: .vertical)
                .padding()
                .cornerRadius(12)
                .padding()
            Toggle(isOn: $goalItem.isImportant) {
                Text("Is it important?")
            }
            Button {
                addGoal()
                showNewGoal = false
            } label: {
                Text("Save")
                    .foregroundColor(Color(red: 0.886, green: 0.612, blue: 0.620))
            }
        }
        .padding()
    }
    func addGoal() {
        let goal = GoalItem(title: goalItem.title, isImportant: goalItem.isImportant)
        modelContext.insert(goal)
    }
}

#Preview {
    NewGoalPopUp(showNewGoal: .constant(false), goalItem: GoalItem(title: "", isImportant: false))
}
