//
//  Information.swift
//  ECC
//
//  Created by 강성찬 on 2024-01-29.
//

import SwiftUI

struct Information: Codable, Identifiable, Equatable {
    var id: UUID = UUID()
    var kind: BoardKind
    var title: String
    var date: String
    var writer: String
    var detail: String
}
