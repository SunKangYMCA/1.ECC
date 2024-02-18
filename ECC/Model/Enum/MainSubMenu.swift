//
//  MainSubMenu.swift
//  ECC
//
//  Created by 강성찬 on 2024-02-17.
//

import SwiftUI

enum MainSubMenu: CaseIterable {
    case bulletin, offering, worship, board, contact, information
    
    var title: String {
        switch self {
        case .bulletin:
            return "주보"
        case .offering:
            return "온라인헌금"
        case .worship:
            return "예배영상"
        case .board:
            return "게시판"
        case .contact:
            return "연락처"
        case .information:
            return "알려드립니다"
        }
    }
    
    var destination: AnyView {
        switch self {
        case .bulletin:
            return AnyView(BulletinView())
        case .offering:
            return AnyView(OfferingView())
        case .worship:
            return AnyView(WorshipView())
        case .board:
            return AnyView(BoardView())
        case .contact:
            return AnyView(ContackView())
        case .information:
            return AnyView(InformationView(information: Information(kind: BoardKind.friendly, title: "", date: "", writer: "", detail: "")))
        }
    }
}
