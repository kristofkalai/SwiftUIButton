//
//  DefaultButtonTheme.swift
//  
//
//  Created by Kristof Kalai on 2023. 03. 04..
//

import SwiftUI

open class DefaultButtonTheme: ButtonTheme {
    public init() {}

    open func contentHeight(for size: ButtonSize, state: ButtonState) -> CGFloat {
        switch size {
        case .normal: return 32
        case .small: return 18
        }
    }

    open func imageSize(for size: ButtonSize, state: ButtonState) -> CGSize {
        let contentHeight = contentHeight(for: size, state: state)
        return .init(width: contentHeight, height: contentHeight)
    }

    open func imagePadding(for size: ButtonSize, state: ButtonState) -> CGSize {
        let contentHeight = contentHeight(for: size, state: state)
        return .init(width: contentHeight / 2, height: contentHeight / 2)
    }

    open func verticalPadding(for size: ButtonSize, state: ButtonState) -> CGFloat {
        8
    }

    open func horizontalPadding(for size: ButtonSize, state: ButtonState) -> CGFloat {
        18
    }

    open func iconBackgroundColor(for size: ButtonSize, state: ButtonState) -> Color {
        switch state {
        case .normal, .pressed:
            return .white.opacity(0.1)
        case .disabled:
            return .gray.opacity(0.1)
        }
    }

    open func iconForegroundColor(for size: ButtonSize, state: ButtonState) -> Color {
        switch state {
        case .normal, .pressed:
            return .white
        case .disabled:
            return .black
        }
    }

    open func backgroundColor(for size: ButtonSize, state: ButtonState) -> Color {
        switch state {
        case .normal:
            return .primary
        case .pressed:
            return .primary.opacity(0.7)
        case .disabled:
            return .black
        }
    }

    open func foregroundColor(for size: ButtonSize, state: ButtonState) -> Color {
        switch state {
        case .normal, .pressed:
            return .white
        case .disabled:
            return .gray
        }
    }

    open func font(for size: ButtonSize, state: ButtonState) -> Font {
        .body
    }
}
