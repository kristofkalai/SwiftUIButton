//
//  ContentView.swift
//  Example
//
//  Created by Kristof Kalai on 2023. 03. 04..
//

import SwiftUI
import SwiftUIButton

struct ContentView: View {
    var body: some View {
        Button {
            print("The button is tapped!")
        } label: {
            Text("Tap me!")
        }
        .buttonStyle(BaseButtonStyle(icon: .leading(.init(systemName: "circle")),
                                     size: .normal(cornerRadius: 15),
                                     theme: DefaultButtonTheme()))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
