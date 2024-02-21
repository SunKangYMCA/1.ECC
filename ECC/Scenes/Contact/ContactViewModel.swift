//
//  ContactViewModel.swift
//  ECC
//
//  Created by 강성찬 on 2024-02-20.
//

import SwiftUI

class ContactViewModel: ObservableObject {
    
    @Published var pasteboard = UIPasteboard.general
    @Published var churchAddress: String = "2551 Ellwood Dr SW, Edmonton, AB T6X 0P7"
    @Published var churchGoogleMapsURL: String = "https://maps.app.goo.gl/zDF5YetTKwRYyPHt7"

    func makeAddressCopyButton() {
        pasteboard.string = churchAddress
    }
}
