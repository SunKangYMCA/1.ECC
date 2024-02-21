//
//  MainViewModel.swift
//  ECC
//
//  Created by 강성찬 on 2024-02-17.
//

import SwiftUI

class MainViewModel: ObservableObject {
    @Published var mainSubManuTitle: MainSubMenu = .bulletin
    @Published var heading: String = "에드먼튼 중앙 장로교회에\n오신 것을 환영합니다."
    let columns: [GridItem] = [GridItem(.adaptive(minimum: .smallScreenWidth), spacing: 0)]
}
