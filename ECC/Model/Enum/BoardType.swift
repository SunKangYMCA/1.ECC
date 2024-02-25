//
//  BoardType.swift
//  ECC
//
//  Created by 강성찬 on 2024-02-08.
//

import SwiftUI


enum BoardType: CaseIterable {
    case kindergarten, kids, youth, youngAdults, oldAdults
    
    var title: String {
        switch self {
        case .kindergarten:
            return "유치부"
        case .kids:
            return "아동부"
        case .youth:
            return "중고등부"
        case .youngAdults:
            return "청년부"
        case .oldAdults:
            return "장년부"
        }
    }
    
    var destination: AnyView {
        switch self {
        case .kindergarten:
            return AnyView(BoardListView(viewModel: BoardListViewModel(type: .kindergarten)))
        case .kids:
            return AnyView(BoardListView(viewModel: BoardListViewModel(type: .kids)))
        case .youth:
            return AnyView(BoardListView(viewModel: BoardListViewModel(type: .youth)))
        case .youngAdults:
            return AnyView(BoardListView(viewModel: BoardListViewModel(type: .youngAdults)))
        case .oldAdults:
            return AnyView(BoardListView(viewModel: BoardListViewModel(type: .oldAdults)))
        }
    }
}
