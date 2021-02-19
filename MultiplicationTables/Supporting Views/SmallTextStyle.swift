//
//  ButtonQuestionTextStyle.swift
//  MultiplicationTables
//
//  Created by Christina Dyrehauge on 30/08/2020.
//  Copyright © 2020 Christina Dyrehauge. All rights reserved.
//

import SwiftUI

struct SmallTextStyle: View {
    var text: String
    var fgColor: Color
    
    var body: some View {
        Text(text)
            .font(Font.custom("Atma-SemiBold", size: 20))
            .foregroundColor(fgColor)
    }
}

struct SmallTextTextStyle_Previews: PreviewProvider {
    static var previews: some View {
        SmallTextStyle(text: "Hello", fgColor: .black)
    }
}
