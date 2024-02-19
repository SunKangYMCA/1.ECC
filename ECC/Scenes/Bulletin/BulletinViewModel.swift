//
//  BulletinViewModel.swift
//  ECC
//
//  Created by 강성찬 on 2024-02-18.
//

import Foundation

class BulletinViewModel: ObservableObject {
    
    @Published var bulletins: [Bulletin] = [
    Bulletin(date: "2.18.2024", url: "jubo0218"),
    Bulletin(date: "2.11.2024", url: "jubo0211"),
    Bulletin(date: "2.04.2024", url: "jubo0204"),
    Bulletin(date: "1.28.2024", url: "jubo0128"),
    Bulletin(date: "1.21.2024", url: "jubo0121"),
    Bulletin(date: "1.14.2024", url: "jubo0114"),
    Bulletin(date: "1.07.2024", url: "jubo0107"),
    ]
    
}
