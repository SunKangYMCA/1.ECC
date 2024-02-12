//
//  BoardKind.swift
//  ECC
//
//  Created by 강성찬 on 2024-01-29.
//

import Foundation

enum BoardKind {
    case information, friendly, newFamily
    
    var title: String {
        switch self {
        case .information:
            return "안내 및 행사"
        case .friendly:
            return "교우동정"
        case .newFamily:
            return "새가족"
        }
    }
}
