//
//  BoardView.swift
//  ECC
//
//  Created by 강성찬 on 2024-01-20.
//

import SwiftUI

struct BoardView: View {
    @StateObject var viewModel: BoardViewModel = BoardViewModel()
    
    var body: some View {
        VStack {
            Text("< 게시판 >")
                .font(.eccFont(type: .normalBold))
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            List {
                ForEach(viewModel.informations) { information in
                    NavigationLink {
                        InformationView(information: information)
                    } label: {
                        Text(information.title)
                    }
                    
                }
            }
        }
    }
}
#Preview {
    BoardView()
}
