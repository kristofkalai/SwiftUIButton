//
//  ButtonTheme.swift
//  
//
//  Created by Kristof Kalai on 2023. 03. 04..
//

import SwiftUI

public protocol ButtonTheme {
    func contentHeight(for size: ButtonSize, state: ButtonState) -> CGFloat
    func imageSize(for size: ButtonSize, state: ButtonState) -> CGSize
    func imagePadding(for size: ButtonSize, state: ButtonState) -> CGSize

    func verticalPadding(for size: ButtonSize, state: ButtonState) -> CGFloat
    func horizontalPadding(for size: ButtonSize, state: ButtonState) -> CGFloat

    func iconBackgroundColor(for size: ButtonSize, state: ButtonState) -> Color
    func iconForegroundColor(for size: ButtonSize, state: ButtonState) -> Color

    func backgroundColor(for size: ButtonSize, state: ButtonState) -> Color
    func foregroundColor(for size: ButtonSize, state: ButtonState) -> Color

    func font(for size: ButtonSize, state: ButtonState) -> Font
}
