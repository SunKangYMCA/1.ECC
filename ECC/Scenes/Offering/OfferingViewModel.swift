//
//  OfferingViewModel.swift
//  ECC
//
//  Created by 강성찬 on 2024-02-20.
//

import Foundation
import UIKit

class OfferingViewModel: ObservableObject {
    let offeringURL: URL? = URL(string:"https://www.example.com")
    @Published var showError: Bool = false
    
    func openURL() {
        guard let url = offeringURL else {
            showError.toggle()
            return
        }
        
        UIApplication.shared.open(url)
    }
}
