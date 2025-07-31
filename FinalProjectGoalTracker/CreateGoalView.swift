//
//  CreateGoalView.swift
//  FinalProjectGoalTracker
//
//  Created by Aanya Malyala on 7/30/25.
//

import SwiftUI
import SwiftData

struct CreateGoalView: View {
    @State private var showButton = true
    @State private var showNewGoal = false
    @Query var toDos: [GoalItem]
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        VStack {
            Text("My Goals")
                .font(.system(size: 40))
                .fontWeight(.black)
                .foregroundColor(Color(red: 0.886, green: 0.612, blue: 0.620))
            
            List {
                ForEach(toDos) { goalItem in
                    HStack {
                        if goalItem.isImportant {
                            Text("‼️" + goalItem.title)
                        } else {
                            Text(goalItem.title)
                        }
                        Spacer()
                        Text("Due: \(goalItem.dueDate, formatter: dateFormatter)")
                            .font(.subheadline)
                    }
                }
                .onDelete(perform: deleteGoal)
            }
            .listStyle(.plain)
            
            Spacer()
            if !showNewGoal {
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
            if showNewGoal {
                NewGoalPopUp(showNewGoal: $showNewGoal, goalItem: GoalItem(title: "", isImportant: false, dueDate: Date())
                )
                
            }
        }
        .padding()
    }
    
    func deleteGoal(at offsets: IndexSet) {
        for offset in offsets {
            let goalItem = toDos[offset]
            modelContext.delete(goalItem)
        }
    }
    let dateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .medium
    return formatter
}()
}

        
        

#Preview {
    CreateGoalView()
        .modelContainer(for: GoalItem.self, inMemory: true)
}
