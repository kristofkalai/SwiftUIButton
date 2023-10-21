//
//  ButtonImage.swift
//
//
//  Created by Kristof Kalai on 2023. 03. 04..
//

import SwiftUI
import ReverseMask

struct ButtonImage {
    let image: Image
    let height: CGFloat
    let imageSize: CGSize
    let backgroundColor: Color
    let foregroundColor: Color
    let masked: Bool
    let cornerRadius: CGFloat
}

extension ButtonImage: View {
    var body: some View {
        let image = image
            .renderingMode(.template)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: imageSize.width, height: imageSize.height)
        backgroundColor
            .reverseMask {
                image
            }
            .overlay {
                ZStack {
                    if !masked {
                        backgroundColor
                            .frame(width: imageSize.width, height: imageSize.height)
                    }
                    image
                        .foregroundColor(foregroundColor)
                }
            }
            .cornerRadius(cornerRadius)
            .frame(height: height)
            .frame(minWidth: imageSize.width, idealWidth: imageSize.width, maxWidth: .zero)
    }
}

struct ButtonImage_Previews: PreviewProvider {
    static var previews: some View {
        ButtonImage(image: .init(systemName: "circle"),
                    height: 200,
                    imageSize: .init(width: 100, height: 120),
                    backgroundColor: .black,
                    foregroundColor: .clear,
                    masked: true,
                    cornerRadius: 15)
        .padding()
        .background(.green)
    }
}
