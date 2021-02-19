//
//  ContentView.swift
//  MultiplicationTables
//
//  Created by Christina Dyrehauge on 02/08/2020.
//  Copyright © 2020 Christina Dyrehauge. All rights reserved.
//

import SwiftUI

struct TableScreen: View {
    let questionsOptions = [3, 5, 7, 10]
    
    @State private var questionArray = [Question]()
    
    @State private var correctAnswer = 0
    
    @State private var selectedAnswerNumber = 0
    
    @State private var questionNumber = 0
    
    @State private var showingScore = false
    
    @State private var scoreTitle = ""
    
    @State private var score = 0
    
    @State private var remaningQuestions = 0
    
    @State private var endOfGame = false
    
    @State private var isShowingSettings = true
    
    @State private var selectedQuestionNumber = 0
    
    @State private var numOfQuestionsIsSelected = false
    
    @State private var selectedTableNumber = 0
    
    @State private var tableNumberIsSelected = false
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.green,  .yellow, .orange, .red]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            if isShowingSettings {
                VStack {
                    VStack(spacing: 15) {
                        Spacer()
                        MediumTextStyle(text: "Choose table", fgColor: .white)
                        
                        HStack(spacing: 15) {
                            Button {
                                tableNumberTapped(1)
                            } label: {
                                MediumTextStyle(text: Constants.TableNumbers.one, fgColor: .red)
                            }
                            .buttonStyle(TableButtonStyle(bgColor: .yellow, lineWidth: tableNumberIsSelected && selectedTableNumber == 1 ? 4 : 2))
                            
                            Button {
                                tableNumberTapped(2)
                            } label: {
                                MediumTextStyle(text: Constants.TableNumbers.two, fgColor: .yellow)
                            }
                            .buttonStyle(TableButtonStyle(bgColor: .green, lineWidth: tableNumberIsSelected && selectedTableNumber == 2 ? 4 : 2))
                            
                            Button {
                                tableNumberTapped(3)
                            } label: {
                                MediumTextStyle(text: Constants.TableNumbers.three, fgColor: .yellow)
                            }
                            .buttonStyle(TableButtonStyle(bgColor: .red, lineWidth: tableNumberIsSelected && selectedTableNumber == 3 ? 4 : 2))
                        }
                        
                        HStack(spacing: 15) {
                            Button {
                                tableNumberTapped(4)
                            } label: {
                                MediumTextStyle(text: Constants.TableNumbers.four, fgColor: .yellow)
                            }
                            .buttonStyle(TableButtonStyle(bgColor: .green, lineWidth: tableNumberIsSelected && selectedTableNumber == 4 ? 4 : 2))
                            
                            Button {
                                tableNumberTapped(5)
                            } label: {
                                MediumTextStyle(text: Constants.TableNumbers.five, fgColor: .yellow)
                            }
                            .buttonStyle(TableButtonStyle(bgColor: .red, lineWidth: tableNumberIsSelected && selectedTableNumber == 5 ? 4 : 2))
                            
                            Button {
                                tableNumberTapped(6)
                            } label: {
                                MediumTextStyle(text: Constants.TableNumbers.six, fgColor: .green)
                            }
                            .buttonStyle(TableButtonStyle(bgColor: .yellow, lineWidth: tableNumberIsSelected && selectedTableNumber == 6 ? 4 : 2))
                        }
                        
                        HStack(spacing: 15) {
                            Button {
                                tableNumberTapped(7)
                            } label: {
                                MediumTextStyle(text: Constants.TableNumbers.seven, fgColor: .red)
                            }
                            .buttonStyle(TableButtonStyle(bgColor: .yellow, lineWidth: tableNumberIsSelected && selectedTableNumber == 7 ? 4 : 2))
                            
                            Button {
                                tableNumberTapped(8)
                            } label: {
                                MediumTextStyle(text: Constants.TableNumbers.eight, fgColor: .yellow)
                            }
                            .buttonStyle(TableButtonStyle(bgColor: .green, lineWidth: tableNumberIsSelected && selectedTableNumber == 8 ? 4 : 2))
                            
                            Button {
                                tableNumberTapped(9)
                            } label: {
                                MediumTextStyle(text: Constants.TableNumbers.nine, fgColor: .yellow)
                            }
                            .buttonStyle(TableButtonStyle(bgColor: .red, lineWidth: tableNumberIsSelected && selectedTableNumber == 9 ? 4 : 2))
                        }
                        
                        HStack(spacing: 15) {
                            Button {
                                tableNumberTapped(10)
                            } label: {
                                MediumTextStyle(text: Constants.TableNumbers.ten, fgColor: .yellow)
                            }
                            .buttonStyle(TableButtonStyle(bgColor: .red, lineWidth: tableNumberIsSelected && selectedTableNumber == 10 ? 4 : 2))
                            
                            Button {
                                tableNumberTapped(11)
                            } label: {
                                MediumTextStyle(text: Constants.TableNumbers.eleven, fgColor: .red)
                            }
                            .buttonStyle(TableButtonStyle(bgColor: .yellow, lineWidth: tableNumberIsSelected && selectedTableNumber == 11 ? 4 : 2))
                            
                            Button {
                                tableNumberTapped(12)
                            } label: {
                                MediumTextStyle(text: Constants.TableNumbers.twelve, fgColor: .yellow)
                            }
                            .buttonStyle(TableButtonStyle(bgColor: .green, lineWidth: tableNumberIsSelected && selectedTableNumber == 12 ? 4 : 2))
                        }
                    }
                    VStack(spacing: 15) {
                        Spacer()
                        MediumTextStyle(text: "Number of questions", fgColor: .white)
                        
                        HStack(spacing: 10) {
                            ForEach(0..<4) { number in
                                Button {
                                    questionNumberTapped(number)
                                } label: {
                                    MediumTextStyle(text: "\(questionsOptions[number])", fgColor: .white)
                                }
                                .buttonStyle(QuestionButtonStyle(lineWidth: numOfQuestionsIsSelected && selectedQuestionNumber == number ? 4 : 2))
                            }
                        }
                        
                        Spacer()
                    }
                    Button {
                        isShowingSettings = false
                        startGame()
                    } label: {
                        LargeTextStyle(text: "PLAY", fgColor: tableNumberIsSelected == false || numOfQuestionsIsSelected == false ? Color(#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)) : .yellow)
                    }
                    .disabled(tableNumberIsSelected == false || numOfQuestionsIsSelected == false)
                }
            } else {
                VStack {
                    Spacer()
                    
                    MediumTextStyle(text: "\(questionArray[questionNumber].text)", fgColor: .white
                    )
                    
                    Spacer()
                    
                    VStack {
                        ForEach(0..<4) { number in
                            Button {
                                answerTapped(number)
                            } label: {
                                MediumTextStyle(text: "\(questionArray[number].answer)", fgColor: .white)
                            }
                            .buttonStyle(AnswerButtonStyle(lineWidth: 2))
                        }
                    }
                    
                    Spacer()
                    
                    HStack {
                        MediumTextStyle(text: "Remaing Questions:", fgColor: .white)
                        MediumTextStyle(text: "\(remaningQuestions)", fgColor: .yellow)
                    }
                    
                    HStack {
                        MediumTextStyle(text: "Current Score:", fgColor: .white)
                        MediumTextStyle(text: "\(score) / \(questionsOptions[selectedQuestionNumber])", fgColor: .yellow)
                    }
                    
                    Spacer()
                    
                    Button {
                        endGame()
                    } label: {
                        MediumTextStyle(text: "End Game", fgColor: .yellow)
                    }
                }
                .onAppear(perform: startGame)
            }
        }
        .alert(isPresented: $showingScore) {
            remaningQuestions != 0 ?
                Alert(title: Text(scoreTitle), message: Text("Your score is \(score) out of \(questionsOptions[selectedQuestionNumber])"), dismissButton: .default(Text("✅")) {
                    askQuestion()
                })
                : Alert(title: Text(scoreTitle), message: Text("Your final score was \(score) out of \(questionsOptions[selectedQuestionNumber])"), dismissButton: .default(Text("End Game")) {
                    endGame()
                })
        }
    }
    
    func startGame() {
        questionArray.removeAll()
        fillQuestionArray()
        questionsRemaning()
    }
    
    func getRandomValues() -> [Int] {
        var randomValueArray = [Int]()
        for _ in 0...2 {
            var random = Int.random(in: 1...10)
            while randomValueArray.contains(random) {
                random = Int.random(in: 1...10)
            }
            randomValueArray.append(random)
        }
        return randomValueArray
    }
    
    func getRandomMultiplier() -> [Int] {
        var randomMultiplierArray = [Int]()
        for _ in 0...10 {
            var random = Int.random(in: 1...12)
            while randomMultiplierArray.contains(random) {
                random = Int.random(in: 1...12)
            }
            randomMultiplierArray.append(random)
        }
        return randomMultiplierArray
    }
    
    func fillQuestionArray() {
        let firstNumber = selectedTableNumber
        let secondNumber = Int.random(in: 1...12)
        let question = "What is \(firstNumber) \(Constants.MathOperators.multiply) \(secondNumber) ?"
        correctAnswer = firstNumber * secondNumber
        questionArray.append(Question(text: question, answer: correctAnswer))
        
        var randomPlusOrMinus = [Constants.MathOperators.plus, Constants.MathOperators.minis].shuffled()
        
        let randomValue = getRandomValues()
        
        for i in 0...2 {
            questionArray.append(Question(text: question, answer: randomPlusOrMinus[0] == Constants.MathOperators.plus ? correctAnswer + randomValue[i] : correctAnswer - randomValue[i]))
            
            randomPlusOrMinus.shuffle()
        }
        questionArray.shuffle()
    }
    
    func tableNumberTapped(_ number: Int) {
        selectedTableNumber = number
        
        if (tableNumberIsSelected == false) {
            tableNumberIsSelected.toggle()
        }
    }
    
    func questionNumberTapped(_ number: Int) {
        selectedQuestionNumber = number
        
        if (numOfQuestionsIsSelected == false) {
            numOfQuestionsIsSelected.toggle()
        }
    }
    
    func questionsRemaning() {
        remaningQuestions = questionsOptions[selectedQuestionNumber]
    }
    
    func answerTapped(_ number: Int) {
        selectedAnswerNumber = number
        
        if questionArray[number].answer == correctAnswer {
            scoreTitle = "Correct! 🥳👍"
            score += 1
            remaningQuestions -= 1
        } else {
            scoreTitle = "Oops! 😣👎 \n The right answer was \(correctAnswer)"
            remaningQuestions -= 1
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.showingScore = true
        }
    }
    
    func askQuestion() {
        questionArray.removeAll()
        fillQuestionArray()
    }
    
    func endGame() {
        score = 0
        isShowingSettings = true
        tableNumberIsSelected = false
        numOfQuestionsIsSelected = false
        questionsRemaning()
    }
    
    struct TableScreen_Previews: PreviewProvider {
        static var previews: some View {
            TableScreen()
        }
    }
}
