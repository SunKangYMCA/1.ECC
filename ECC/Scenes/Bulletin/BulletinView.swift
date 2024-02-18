//
//  BulletinView.swift
//  ECC
//
//  Created by 강성찬 on 2024-01-20.
//

import SwiftUI
import PDFKit

struct BulletinView: View {
    
    let doc: PDFDocument
    
    init() {
//        let url = try? Data(contentsOf: URL(string: "https://www.lkpc.org/assets/board/files/lpc_b51a347f3994453cae77b377b783c4ad.pdf")!)
        let url = Bundle.main.url(forResource: "jubo", withExtension: "pdf")!
//        self.doc = PDFDocument(data: url!)!
        self.doc = PDFDocument(url: url)!
    }
    
    var body: some View {
        PDFKitView(showing: doc)
    }
}


#Preview {
    BulletinView()
}
