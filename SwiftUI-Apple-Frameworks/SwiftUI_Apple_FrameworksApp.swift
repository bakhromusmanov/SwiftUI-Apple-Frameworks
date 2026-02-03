//
//  SwiftUI_Apple_FrameworksApp.swift
//  SwiftUI-Apple-Frameworks
//
//  Created by Bakhrom Usmanov on 29/01/26.
//

import SwiftUI

@main
struct SwiftUI_Apple_FrameworksApp: App {
    var body: some Scene {
        WindowGroup {
            AllFrameworksView(viewModel: .init(items: MockData.frameworks))
        }
    }
}
