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
            return AnyView(BoardListDetailView(type: .kindergarten))
        case .kids:
            return AnyView(BoardListDetailView(type: .kids))
        case .youth:
            return AnyView(BoardListDetailView(type: .youth))
        case .youngAdults:
            return AnyView(BoardListDetailView(type: .youngAdults))
        case .oldAdults:
            return AnyView(BoardListDetailView(type: .oldAdults))
        }
    }
    
    var detail: BoardDetail {
        switch self {
        case .kindergarten:
            return BoardDetail(date: "", title: "", detail: "")
        case .kids:
            return BoardDetail(date: "", title: "", detail: "")
        case .youth:
            return BoardDetail(date: "", title: "", detail: "")
        case .youngAdults:
            return BoardDetail(date: "", title: "", detail: "")
        case .oldAdults:
            return BoardDetail(date: "", title: "", detail: "")
        }
    }
    
    var details: [BoardDetail] {
        switch self {
        case .kindergarten:
            return []
        case .kids:
            return []
        case .youth:
            return []
        case .youngAdults:
            return []
        case .oldAdults:
            return []
        }
    }
}
