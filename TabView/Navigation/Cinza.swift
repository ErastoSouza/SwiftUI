//
//  Cinza.swift
//  Navigation
//
//  Created by Turma02-5 on 26/08/24.
//

import SwiftUI

struct Cinza: View {
    var body: some View {
        ZStack{
            Rectangle().fill(.gray)
            Image(systemName: "shield.checkered").resizable().scaledToFit().colorInvert()
                }
    }
}

#Preview {
    Cinza()
}
