//
//  AllFrameworksView.swift
//  SwiftUI-Apple-Frameworks
//
//  Created by Bakhrom Usmanov on 29/01/26.
//

import SwiftUI

struct AllFrameworksView: View {
    private var viewModel: AllFrameworksViewModel
    private var sampleItem = MockData.sampleFramework
    
    init(viewModel: AllFrameworksViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        ZStack {
            backgroundView
                .ignoresSafeArea()
            HStack {
                ForEach(viewModel.items) {
                    FrameworkItemView(
                        name: $0.name,
                        imageName: $0.imageName
                    )
                }
            }
        }
    }
    
    var backgroundView: some View {
        Color(.black)
    }
}

struct FrameworkItemView: View {
    let name: String
    let imageName: String
    
    var body: some View {
        VStack(spacing: 16) {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 120)
            Text(name)
                .scaledToFit()
                .minimumScaleFactor(0.8)
                .font(.system(size: 16, weight: .bold))
                .foregroundColor(.white)
        }
    }
}

#Preview {
    AllFrameworksView(
        viewModel: .init(
            items: MockData.frameworks
        )
    )
}
