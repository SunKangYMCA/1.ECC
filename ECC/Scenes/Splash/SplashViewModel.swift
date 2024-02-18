//
//  SplashViewModel.swift
//  ECC
//
//  Created by 강성찬 on 2024-01-07.
//

import SwiftUI

class SplashViewModel: ObservableObject {
    @Published var shouldShowMainTabView: Bool = false
    
    func showMainTabView() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            withAnimation {
                self.shouldShowMainTabView = true
            }
        }
    }
}
