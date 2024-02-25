//
//  ContactViewModel.swift
//  ECC
//
//  Created by 강성찬 on 2024-02-20.
//

import SwiftUI

class ContactViewModel: ObservableObject {
    
    let pasteboard = UIPasteboard.general
    let churchAddress: String = "2551 Ellwood Dr SW, Edmonton, AB T6X 0P7"
    let churchGoogleMapsURL: String = "https://maps.app.goo.gl/zDF5YetTKwRYyPHt7"
    let churchPhoneNumber: String = "tel://000-000-0000"
    let churchEmailaddress: String = "mailto:ecccentrechurch@church.com"

    func makeAddressCopyButton() {
        pasteboard.string = churchAddress
    }
}
