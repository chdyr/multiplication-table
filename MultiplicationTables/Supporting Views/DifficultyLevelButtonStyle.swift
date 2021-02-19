//
//  DifficultyLevelButtonStyle.swift
//  MultiplicationTables
//
//  Created by Christina Dyrehauge on 30/08/2020.
//  Copyright © 2020 Christina Dyrehauge. All rights reserved.
//

import SwiftUI

struct AnswerButtonStyle: ButtonStyle {
    var lineWidth: CGFloat
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(width: 80, height: 30)
            .padding(20)
            .background(
                RoundedRectangle(cornerRadius: 50, style: .continuous)
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [.green, .yellow]), startPoint: .leading, endPoint: .trailing)
                )
                    .shadow(radius: 10)
        )
            .overlay(
                RoundedRectangle(cornerRadius: 50)
                    .strokeBorder(Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)), lineWidth: lineWidth)
        )
            .scaleEffect(configuration.isPressed ? 0.85 : 1)
    }
}

//struct DifficultyLevelButtonStyle_Previews: PreviewProvider {
//    static var previews: some View {
//        DifficultyLevelButtonStyle(bgColor: Color.red)
//    }
//}
