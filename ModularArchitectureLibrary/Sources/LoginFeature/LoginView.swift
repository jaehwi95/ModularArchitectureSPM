//
//  LoginView.swift
//
//
//  Created by Jaehwi Kim on 2024/08/21.
//

import DesignSystem
import SwiftUI

public struct LoginView: View {
    @Environment(\.dismiss) var dismiss: DismissAction
    let googleLoginAction: () -> Void
    
    public var body: some View {
        VStack(alignment: .leading) {
            Group {
                Text("로그인")
//                    .font(.system(size: 28, weight: .bold))
//                    .foregroundStyle(Color.black)
//                    .padding(.top, 80)
                Text("아래 제공되는 서비스로 로그인을 해주세요.")
                    .font(.system(size: 14))
//                    .foregroundStyle(Color.greyDeep)
            }
            .padding(.horizontal, 30)
            
            Spacer()
            
            Button(
                action: {
                    googleLoginAction()
                },
                label: {
                    Text("Google로 로그인")
                }
            )
//            .buttonStyle(MainButtonStyle())
            .frame(height: 40)
            .padding(.horizontal, 15)
            .clipShape(RoundedRectangle(cornerRadius: 5))
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItemGroup(placement: .topBarLeading) {
                Button(
                    action: {
                        dismiss()
                    },
                    label: {
                        Image("back")
                    }
                )
            }
        }
        .overlay {
            
        }
    }
}

#Preview {
    LoginView(googleLoginAction: {})
}
