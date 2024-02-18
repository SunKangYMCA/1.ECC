//
//  MainViewModel.swift
//  ECC
//
//  Created by 강성찬 on 2024-02-17.
//

import SwiftUI

class MainViewModel: ObservableObject {
    @Published var mainSubManuTitle: MainSubMenu = .bulletin
    
    let columns: [GridItem] = [GridItem(.adaptive(minimum: .smallScreenWidth), spacing: 10)]
}
