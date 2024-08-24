//
//  View+Extension.swift
//
//
//  Created by Jaehwi Kim on 2024/08/23.
//

import SwiftUI

/// Device에 따라 Bottom SafeArea가 다름 (ex. iPhone 8), BottomSafeArea를 확인하여 알맞는 padding 추가
struct SafeAreaBottomPadding: ViewModifier {
    func body(content: Content) -> some View {
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
           let window = windowScene.windows.first,
           window.safeAreaInsets.bottom == 0 {
            content.padding(.bottom)
        } else {
            content
        }
    }
}

extension View {
    func safeAreaBottomPadding() -> some View {
        modifier(SafeAreaBottomPadding())
    }
}
