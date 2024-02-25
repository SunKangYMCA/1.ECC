//
//  BoardListDetailView.swift
//  ECC
//
//  Created by 강성찬 on 2024-02-21.
//

import SwiftUI

struct BoardListDetailView: View {
    
    @StateObject var viewModel: BoardListDetailViewModel = BoardListDetailViewModel()
    
    var type: BoardType
    
    var body: some View {
        VStack {
            boardListView
        }
        .navigationTitle(type.title)
        .navigationBarTitleDisplayMode(.inline)
    }
    
    private var boardListView: some View {
        List {
            if type.title == "유치부" {
                ForEach(viewModel.kindergartenBoardDetails, id: \.self) { detail in
                    VStack {
                        HStack {
                            Text(detail.title)
                            Spacer()
                            Text(detail.date)
                        }
                        .padding()
                        Text(detail.detail)
                    }
                }
            } else if type.title == "아동부" {
                ForEach(viewModel.kidsBoardDetails, id: \.self) { detail in
                    VStack {
                        HStack {
                            Text(detail.title)
                            Spacer()
                            Text(detail.date)
                        }
                        .padding()
                        Text(detail.detail)
                    }
                }
            } else if type.title == "중고등부" {
                ForEach(viewModel.youthBoardDeteails, id: \.self) { detail in
                    VStack {
                        HStack {
                            Text(detail.title)
                            Spacer()
                            Text(detail.date)
                        }
                        .padding()
                        Text(detail.detail)
                    }
                }
            } else if type.title == "청년부" {
                ForEach(viewModel.youngAdultsBoardDeteails, id: \.self) { detail in
                    VStack {
                        HStack {
                            Text(detail.title)
                            Spacer()
                            Text(detail.date)
                        }
                        .padding()
                        Text(detail.detail)
                    }
                }
            } else if type.title == "장년부" {
                ForEach(viewModel.oldAdultsBoardDeteails, id: \.self) { detail in
                    VStack {
                        HStack {
                            Text(detail.title)
                            Spacer()
                            Text(detail.date)
                        }
                        .padding()
                        Text(detail.detail)
                    }
                }
            }
        }
    }
}


#Preview {
    BoardListDetailView(type: .kids)
}
