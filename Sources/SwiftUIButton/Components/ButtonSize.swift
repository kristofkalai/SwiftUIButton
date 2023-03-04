//
//  ButtonSize.swift
//  
//
//  Created by Kristof Kalai on 2023. 03. 04..
//

public enum ButtonSize {
    case normal(cornerRadius: Double)
    case small(cornerRadius: Double)

    public static var normal: Self {
        .normal(cornerRadius: .zero)
    }

    public static var small: Self {
        .small(cornerRadius: .zero)
    }

    var cornerRadius: Double {
        switch self {
        case let .normal(cornerRadius): return cornerRadius
        case let .small(cornerRadius): return cornerRadius
        }
    }
}
