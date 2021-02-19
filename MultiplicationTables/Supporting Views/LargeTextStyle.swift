//
//  LargeTextStyle.swift
//  MultiplicationTables
//
//  Created by Christina Dyrehauge on 23/09/2020.
//  Copyright © 2020 Christina Dyrehauge. All rights reserved.
//

import SwiftUI

struct LargeTextStyle: View {
    var text: String
    var fgColor: Color
    
    var body: some View {
       Text(text)
        .font(Font.custom("Atma-Bold", size: 60))
        .foregroundColor(fgColor)
    }
}

struct LargeTextStyle_Previews: PreviewProvider {
    static var previews: some View {
        LargeTextStyle(text: "Hello", fgColor: .black)
    }
}
