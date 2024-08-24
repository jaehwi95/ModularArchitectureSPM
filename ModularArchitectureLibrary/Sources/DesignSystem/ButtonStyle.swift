//
//  ButtonStyle.swift
//
//
//  Created by Jaehwi Kim on 2024/08/21.
//

import SwiftUI

private struct MainButtonStyle: ButtonStyle {
    let textColor: Color
    let borderColor: Color
    
    public init(textColor: Color, borderColor: Color? = nil) {
        self.textColor = textColor
        self.borderColor = borderColor ?? textColor
    }
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 14))
            .foregroundStyle(textColor)
            .frame(maxWidth: .infinity, maxHeight: 40)
            .overlay {
                RoundedRectangle(cornerRadius: 5)
                    .stroke(borderColor, lineWidth: 0.8)
            }
            .padding(.horizontal, 15)
            .opacity(configuration.isPressed ? 0.5 : 1)
    }
}

#Preview {
    Button("MainButton") {
        
    }.buttonStyle(MainButtonStyle(textColor: .black))
}
