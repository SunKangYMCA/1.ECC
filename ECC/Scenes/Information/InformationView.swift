//
//  InformationView.swift
//  ECC
//
//  Created by 강성찬 on 2024-01-29.
//

import SwiftUI

struct InformationView: View {
    var information: Information
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    InformationView(information: Information(kind: BoardKind.friendly, title: "", date: "", writer: "", detail: ""))
}
