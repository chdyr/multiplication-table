//
//  ButtonTextStyle.swift
//  MultiplicationTables
//
//  Created by Christina Dyrehauge on 20/08/2020.
//  Copyright © 2020 Christina Dyrehauge. All rights reserved.
//

import SwiftUI

struct MediumTextStyle: View {
    var text: String
    var fgColor: Color
    
    var body: some View {
        Text(text)
            .font(Font.custom("Atma-SemiBold", size: 34))
            .foregroundColor(fgColor)
    }
}

struct MediumTextStyle_Previews: PreviewProvider {
    static var previews: some View {
        MediumTextStyle(text: "Hello", fgColor: .black)
    }
}
