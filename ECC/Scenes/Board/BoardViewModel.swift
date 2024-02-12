//
//  BoardViewModel.swift
//  ECC
//
//  Created by 강성찬 on 2024-01-29.
//

import Foundation

class BoardViewModel: ObservableObject {
    @Published var informations: [Information] = [
        Information(kind: BoardKind.information ,title: "다락방 모임", date: "Jan.28.2024", writer: "운영자", detail: "각 다락방 별로 자유롭게 모이시기 바랍니다."),
        Information(kind: BoardKind.newFamily, title: "새가족을 환영합니다.", date: "Jan.28.2024", writer: "새교우담당", detail: "배채민(류다희, 재희, 소희) - 조선희 집사 다락방\n김화숙(모) - 이영희 권사 다락방 ☎ 825-522-9107(김)\n#52 1623 Towne Centre Blvd NW ☎ 825-523-3166(배)")
        ]
    
}
