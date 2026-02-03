//
//  FrameworkDTO.swift
//  SwiftUI-Apple-Frameworks
//
//  Created by Bakhrom Usmanov on 29/01/26.
//

import Foundation

struct FrameworkDTO: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let urlString: String
    let description: String
}


