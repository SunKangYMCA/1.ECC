//
//  MainKind.swift
//  ECC
//
//  Created by 강성찬 on 2024-02-17.
//

import Foundation

enum MainKind {
    case main, bulletin, offering, worship, board, contact, information
    
    var title: String {
        switch self {
        case .main:
            return "Main"
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
}
