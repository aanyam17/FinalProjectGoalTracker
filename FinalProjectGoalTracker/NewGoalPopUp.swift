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
    @State private var selectedDate = Date()
    
    var body: some View {
        VStack {
            Text("New Goal")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.886, green: 0.612, blue: 0.620))
            TextField("Enter your goal here...", text: $goalItem.title, axis: .vertical)
                .padding()
                .frame(height: 50)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                    .stroke(Color(red: 0.710, green: 0.086, blue: 0.196)))
                .cornerRadius(12)
                .padding()
            Toggle(isOn: $goalItem.isImportant) {
                Text("Is it important?")
            }
            DatePicker(("Select Due Date"), selection: $goalItem.dueDate, displayedComponents: .date)
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
        let goal = GoalItem(title: goalItem.title, isImportant: goalItem.isImportant, dueDate: goalItem.dueDate)
        modelContext.insert(goal)
    }
}

#Preview {
    NewGoalPopUp(showNewGoal: .constant(false), goalItem: GoalItem(title: "", isImportant: false, dueDate: Date()))
}
