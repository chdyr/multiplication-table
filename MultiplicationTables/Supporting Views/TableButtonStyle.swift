//
//  TableButtonStyle.swift
//  MultiplicationTables
//
//  Created by Christina Dyrehauge on 20/08/2020.
//  Copyright © 2020 Christina Dyrehauge. All rights reserved.
//

import SwiftUI

struct TableButtonStyle: ButtonStyle {
    var bgColor: Color
    var lineWidth: CGFloat
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(width: 60, height: 30)
            .padding(20)
            .background(
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .fill(bgColor)
                    .shadow(radius: 10)
        )
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .strokeBorder(Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)), lineWidth: lineWidth)
        )
            .scaleEffect(configuration.isPressed ? 0.85: 1)
            .animation(.spring())
    }
}
