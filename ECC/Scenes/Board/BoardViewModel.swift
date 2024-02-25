//
//  BoardViewModel.swift
//  ECC
//
//  Created by 강성찬 on 2024-01-29.
//


import SwiftUI

class BoardViewModel: ObservableObject {
    let columns: [GridItem] = [GridItem(.flexible(minimum: 200), spacing: 30)]
}
