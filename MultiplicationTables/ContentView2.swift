//
//  ContentView2.swift
//  MultiplicationTables
//
//  Created by Christina Dyrehauge on 21/08/2020.
//  Copyright © 2020 Christina Dyrehauge. All rights reserved.
//

import SwiftUI

struct SettingsScreen: View {
    let tableNumber: String
    
    @State private var numberOfQuestions = ["5", "10", "20", "All"]
    
    @State private var difficultyLevelOptions = ["Easy", "Medium", "Hard"]
    
    @State private var difficultyColor = [Color.green, Color.yellow, Color.red]
    
    @State private var selectedQuestionNumber = 0
    
    @State private var numOfQuestionsIsSelected = false
    
    @State private var selectedDiffLvlNumber = 0
    
    @State private var diffLvlIsSelected = false
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.green, .yellow, .orange, .red]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 15) {
                HStack {
                    Text("Table")
                        .font(Font.custom("Atma-Bold", size: 60))
                        .foregroundColor(Color.yellow)
                    
                    Text("\(tableNumber)")
                        .font(Font.custom("Atma-Bold", size: 60))
                        .foregroundColor(Color.red)
                }
                .offset(y: -30)
                
                Text("Number of questions")
                    .font(Font.custom("Atma-SemiBold", size: 34))
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                
                HStack(spacing: 15) {
                    ForEach(0..<4) { number in
                        Button(action: {
                            self.buttonNumOfQuestionsTapped(number)
                        }) {
                            ButtonQuestionTextStyle(text: self.numberOfQuestions[number])
                        }
                        .buttonStyle(QuestionButtonStyle(lineWidth: self.numOfQuestionsIsSelected && self.selectedQuestionNumber == number ? 4 : 2))
                    }
                }
                
                Spacer()
                
                Text("Difficulty Level")
                    .font(Font.custom("Atma-SemiBold", size: 34))
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                
                HStack(spacing: 15) {
                    ForEach(0..<3) { number in
                        Button(action: {
                            self.buttonDiffLvlTapped(number)
                        }) {
                            ButtonQuestionTextStyle(text: self.difficultyLevelOptions[number])
                        }
                        .buttonStyle(DifficultyLevelButtonStyle(bgColor: self.difficultyColor[number], lineWidth: self.diffLvlIsSelected && self.selectedDiffLvlNumber == number ? 4 : 2))
                    }
                }
                
                Spacer()
                
                Button(action: {
                    // Do somthing
                }) {
                    Text("PLAY")
                        .font(Font.custom("Atma-Bold", size: 60))
                        .foregroundColor(Color.yellow)
                }
            }
        }
    }
    
    func buttonNumOfQuestionsTapped(_ number: Int) {
        selectedQuestionNumber = number
        
        if (!numOfQuestionsIsSelected) {
            numOfQuestionsIsSelected.toggle()
        }
    }
    
    func buttonDiffLvlTapped(_ number: Int) {
        selectedDiffLvlNumber = number
        
        if (!diffLvlIsSelected) {
            diffLvlIsSelected.toggle()
        }
    }
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen(tableNumber: "4")
    }
}
