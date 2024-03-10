//
//  BoardDetail.swift
//  ECC
//
//  Created by 강성찬 on 2024-02-22.
//

import Foundation

struct BoardDetail: Hashable, Decodable, Identifiable {
    var id: UUID = UUID()
    var date: String
    var title: String
    var detail: String
}
