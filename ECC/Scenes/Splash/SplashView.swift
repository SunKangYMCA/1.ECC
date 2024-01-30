//
//  SplashView.swift
//  ECC
//
//  Created by 강성찬 on 2024-01-16.
//

import SwiftUI

struct SplashView: View {
    @StateObject var viewModel: SplashViewModel = SplashViewModel()
    
    var body: some View {
        VStack {
            if viewModel.shouldShowMainTabView {
                MainTabView()
            } else {
                ZStack {
                    VStack {
                        Image("logo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
            }
        }
        .onAppear(perform: {
            viewModel.showMainTabView()
        })
    }
    
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
