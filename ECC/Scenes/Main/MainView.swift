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
        VStack {
            Text("에드먼튼 중앙 장로교회에\n오신 것을 환영합니다.")
                .multilineTextAlignment(.center)
                .font(.eccFont(type: .normalBold))
            
            LazyVGrid(columns: viewModel.columns) {
                ForEach(MainSubMenu.allCases, id: \.self) { menu in
                    NavigationLink {
                        menu.destination
                    } label: {
                        Text(menu.title)
                            .foregroundColor(.white)
                            .font(.eccFont(type: .normalBold))
                            .frame(width: .smallScreenWidth, height: .smallScreenWidth)
                            .background(
                                Color.blue
                                    .opacity(0.4)
                                    .cornerRadius(.cornerRadius)
                            )
                    }
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Main")
    }
}

#Preview {
    MainView()
}



