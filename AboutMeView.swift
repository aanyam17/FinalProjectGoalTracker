//
//  AboutMeView.swift
//  FinalProjectGoalTracker
//
//  Created by Roshal Sebastian on 7/30/25.
//

import SwiftUI

struct AboutMeView: View {
    @State private var name = ""
    @State private var birthday = ""
    @State private var role = ""
    @State private var goalSelection: String? = nil
    @State private var selectedGoal = ""
    let roles = ["Student", "Teacher", "Athlete", "Adult", "Other"]
    var body: some View {
        NavigationStack{
            ZStack{
                Image("color 3")
                    .resizable()
                    .ignoresSafeArea()
                
                VStack (spacing: 20) {
                    Text("Hi there, let’s get to know you")
                        .font(.title)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .padding(40)
                    Spacer()
                    
                    VStack (spacing: 20) {
                        TextField("Name", text: $name)
                            .padding()
                            .background(Color(red: 0.89, green: 0.61, blue: 0.62))
                            .cornerRadius(10)
                            .foregroundColor(.black)
                        
                        TextField("Birthday", text: $birthday)
                            .padding()
                            .background(Color(red: 0.89, green: 0.61, blue: 0.62))
                            .cornerRadius(10)
                            .foregroundColor(.black)
                        
                        TextField("What role do you play?", text: $role)
                            .padding()
                            .background(Color(red: 0.89, green: 0.61, blue: 0.62))
                            .cornerRadius(10)
                            .foregroundColor(.black)
                        
                        Text("Are you looking to pursue short or long term goals?")
                            .foregroundColor(.black)
                            .bold()
                            .italic()
                            .multilineTextAlignment(.center)
                            .padding(.top)
                        
                        HStack(spacing: 20) {
                            ForEach(["Short", "Long", "Both"], id: \.self) { goal in
                                Button(action: {
                                    selectedGoal = goal
                                }) {
                                    Text(goal)
                                        .padding()
                                        .frame(minWidth: 80)
                                        .background(Color(red: 0.89, green: 0.61, blue: 0.62))
                                        .cornerRadius(15)
                                        .foregroundColor(.black)
                                    
                                }
                            }
                        }
                            NavigationLink(destination: CreateGoalView()) {
                                Text("Finish")
                                    .fontWeight(.bold)
                                    .padding()
                                    .background(Color(red: 0.89, green: 0.61, blue: 0.62))
                                    .foregroundColor(.black)
                                    .cornerRadius(25)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 25)
                                            .stroke(Color.black, lineWidth: 1)
                                    )
                            }
                            .padding(.top)
                            
                            Spacer()
                        }
                        .padding(.horizontal)
                    }
                }
            }
            
        }
    }

#Preview{
    AboutMeView()
}
