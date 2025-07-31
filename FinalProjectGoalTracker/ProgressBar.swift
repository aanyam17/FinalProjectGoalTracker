//
//  ProgressBar.swift
//  FinalProjectGoalTracker
//
//  Created by Scholar on 7/30/25.
//
import SwiftUI


struct CustomProgressBar: View {
    @Binding var progress: Double
    var gradientColors: [Color]
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.gray.opacity(0.3))
                    .frame(height: 20)
                
                RoundedRectangle(cornerRadius: 10)
                    .fill(LinearGradient(gradient: Gradient(colors: gradientColors), startPoint: .leading, endPoint: .trailing))
                    .frame(width: geometry.size.width * CGFloat(progress), height: 20)
                    .animation(.easeInOut(duration: 0.3), value: progress)
            }
        }
        .frame(height: 20)
    }
}


struct ProgressBar: View {
    @State private var progress1: Double = 0.0
    @State private var showCompletionAlert = false  // ✅ Alert state


    var body: some View {
        ZStack {
            Color(red: 230/255, green: 191/255, blue: 192/255)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Text("Update Your Goal's Progress!")
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding(.top)
                
                Text("Did you work on your goal today?")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .foregroundColor(.black)
                    .cornerRadius(5)
                
                VStack(spacing: 20) {
                    CustomProgressBar(progress: $progress1, gradientColors: [.pink, .red])
                    
                    HStack(spacing: 15) {
                        Button(action: {
                            progress1 = min(progress1 + 0.1, 1.0)
                            if progress1 >= 1.0 {
                                showCompletionAlert = true // ✅ Trigger alert
                            }
                        }) {
                            Text("Yes!")
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.white)
                                .foregroundColor(.black)
                                .cornerRadius(10)
                        }


                        Button(action: {
                            progress1 = 0.0
                        }) {
                            Text("Reset All")
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.red)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                    }
                    .padding(.horizontal, 20)
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(15)
                .shadow(radius: 5)
            }
            .padding()
        }
        .alert(isPresented: $showCompletionAlert) {
            Alert(
                title: Text("🎉 Congratulations!"),
                message: Text("You have completed your goal!"),
                dismissButton: .default(Text("OK"))
            )
        }
    }
}


#Preview {
    ProgressBar()
}


