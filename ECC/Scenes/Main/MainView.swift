//
//  MainView.swift
//  ECC
//
//  Created by 강성찬 on 2024-02-17.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel: MainViewModel = MainViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                Text("에드먼튼 중앙 장로교회에 오신 것을 환영합니다.")
                    .font(.eccFont(type: .normalBold))
                NavigationLink {
                    BulletinView()
                } label: {
                    Text("주보")
                        .frame(width: .smallScreenWidth, height: .smallScreenWidth)
                }
            }
        }
    }
}

#Preview {
    MainView()
}
