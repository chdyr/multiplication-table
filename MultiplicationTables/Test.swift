//
//  Test.swift
//  MultiplicationTables
//
//  Created by Christina Dyrehauge on 01/10/2020.
//  Copyright © 2020 Christina Dyrehauge. All rights reserved.
//

import SwiftUI

//struct GameScreen: View {
//    @EnvironmentObject var state: GameState
//
//    @State private var questionNumber = 0
//    @State private var questionSet = [Question(text: "What is 6 x 7?", answer: 42)]
//
//    let test = [Question(text: "What is 6 x 7?", answer: 42)]
//
//    var body: some View {
//        VStack {
//            Text("Array : \(questionSet.count)")
//
//            Text("\(questionSet[questionNumber].text)")
//
//            Button("End Game") {
//                state.active.toggle()
//            }
//        }
//        .onAppear(perform: startGame)
//    }
//
//    func setNumberOfQuestions(_ questionIndex: Int) -> Int {
//        switch questionIndex {
//        case 0:
//            return 5
//        case 1:
//            return 10
//        case 2:
//            return 20
//        default:
//            return 12
//        }
//    }
//
//    func setDifficulty(_ difficultyIndex: Int) -> Int {
//        switch difficultyIndex {
//        case 0:
//            return 4
//        case 1:
//            return 8
//        default:
//            return 12
//        }
//    }
//
//    func startGame() {
//        questionSet.removeAll()
//
//        let difficultyRange = setDifficulty(state.selectedDifficulty)
//        let numberOfQuestions = setNumberOfQuestions(state.selectedNumberOfQuestions)
//        let firstNumber = state.selectedTable
//        let secondNumberRange = 0...difficultyRange
//
//        for _ in 0..<numberOfQuestions {
//            let secondNumber = secondNumberRange.randomElement() ?? 2
//            let question = "What is \(firstNumber) ⨉ \(secondNumber)?"
//            let answer = firstNumber * secondNumber
//            questionSet.append(Question(text: question, answer: answer))
//        }
//    }
//}
//
//struct Question {
//    var text: String
//    var answer: Int
//}

//struct GameScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        GameScreen().environmentObject(GameState())
//    }
//}
