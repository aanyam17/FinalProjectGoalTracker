//
//  GoalItem.swift
//  FinalProjectGoalTracker
//
//  Created by Aanya Malyala on 7/30/25.
//

import Foundation
import SwiftData

@Model
class GoalItem {
    var title: String
    var isImportant: Bool
    
    init(title: String, isImportant: Bool = false) {
        self.title = title
        self.isImportant = isImportant
    }
}

