//
//  Banner.swift
//  ECC
//
//  Created by 강성찬 on 2024-02-20.
//

import SwiftUI

struct Banner: View {
    var body: some View {
        Image("intro")
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

#Preview {
    Banner()
}
