//
//  Rosa.swift
//  Navigation
//
//  Created by Turma02-5 on 26/08/24.
//

import SwiftUI

struct Rosa: View {
    var body: some View {
        ZStack{
            Rectangle().fill(.pink)
            Image(systemName: "heart").resizable().scaledToFit().colorInvert()
                }
    }
}

#Preview {
    Rosa()
}
