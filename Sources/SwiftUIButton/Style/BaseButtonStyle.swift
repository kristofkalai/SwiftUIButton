//
//  BaseButtonStyle.swift
//  
//
//  Created by Kristof Kalai on 2023. 03. 04..
//

import SwiftUI

public struct BaseButtonStyle {
    @Environment(\.isEnabled) private var isEnabled
    private let icon: ButtonIcon
    private let size: ButtonSize
    private let theme: ButtonTheme

    public init(icon: ButtonIcon, size: ButtonSize, theme: ButtonTheme = DefaultButtonTheme()) {
        self.icon = icon
        self.size = size
        self.theme = theme
    }
}

extension BaseButtonStyle: ButtonStyle {
    public func makeBody(configuration: Configuration) -> some View {
        let state: ButtonState = {
            if configuration.isPressed {
                return .pressed
            } else if !isEnabled {
                return .disabled
            } else {
                return .normal
            }
        }()
        return buildButton(state, configuration.label)
    }
}

extension BaseButtonStyle {
    private func contentHeight(for state: ButtonState) -> CGFloat {
        theme.contentHeight(for: size, state: state)
    }

    private func imageSize(for state: ButtonState) -> CGSize {
        theme.imageSize(for: size, state: state)
    }

    private func imagePadding(for state: ButtonState) -> CGSize {
        theme.imagePadding(for: size, state: state)
    }

    private func verticalPadding(for state: ButtonState) -> CGFloat {
        theme.verticalPadding(for: size, state: state)
    }

    private func horizontalPadding(for state: ButtonState) -> CGFloat {
        theme.horizontalPadding(for: size, state: state)
    }

    private func iconBackgroundColor(for state: ButtonState) -> Color {
        theme.iconBackgroundColor(for: size, state: state)
    }

    private func iconForegroundColor(for state: ButtonState) -> Color {
        theme.iconForegroundColor(for: size, state: state)
    }

    private func backgroundColor(for state: ButtonState) -> Color {
        theme.backgroundColor(for: size, state: state)
    }

    private func foregroundColor(for state: ButtonState) -> Color {
        theme.foregroundColor(for: size, state: state)
    }

    private func font(for state: ButtonState) -> Font {
        theme.font(for: size, state: state)
    }
}

extension BaseButtonStyle {
    private func buildButton(_ state: ButtonState, _ label: ButtonStyleConfiguration.Label) -> some View {
        HStack(spacing: 0) {
            if case let .leading(image) = icon {
                buttonImage(for: image, state: state, isLeading: true)
            }
            label
                .foregroundColor(foregroundColor(for: state))
                .frame(height: contentHeight(for: state))
                .font(font(for: state))
            if case let .trailing(image) = icon {
                buttonImage(for: image, state: state, isLeading: false)
            }
        }
        .padding(.horizontal, horizontalPadding(for: state))
        .padding(.vertical, verticalPadding(for: state))
        .background(backgroundColor(for: state))
        .cornerRadius(size.cornerRadius)
    }

    private func buttonImage(for image: Image, state: ButtonState, isLeading: Bool) -> some View {
        ButtonImage(image: image,
                    height: contentHeight(for: state),
                    imageSize: imageSize(for: state),
                    backgroundColor: iconBackgroundColor(for: state),
                    foregroundColor: iconForegroundColor(for: state),
                    masked: true,
                    cornerRadius: size.cornerRadius)
        .padding(isLeading ? .trailing : .leading, imagePadding(for: state).width)
    }
}
