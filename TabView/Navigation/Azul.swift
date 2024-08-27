//
//  Azul.swift
//  Navigation
//
//  Created by Turma02-5 on 26/08/24.
//

import SwiftUI

struct Azul: View {
    var body: some View {
        ZStack{
            Rectangle().fill(.blue)
            Image(systemName: "suit.spade").resizable().scaledToFit().colorInvert()
                }
    }
}

#Preview {
    Azul()
}
