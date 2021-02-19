//
//  ButtonTextStyle.swift
//  MultiplicationTables
//
//  Created by Christina Dyrehauge on 20/08/2020.
//  Copyright © 2020 Christina Dyrehauge. All rights reserved.
//

import SwiftUI

struct ButtonTableTextStyle: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(Font.custom("Atma-Bold", size: 35))
    }
}

struct ButtonTextStyle_Previews: PreviewProvider {
    static var previews: some View {
        ButtonTableTextStyle(text: "Hello")
    }
}
