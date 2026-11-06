//
//  MemberButton.swift
//  Requite
//
//  Created by Bryce King on 11/2/26.
//

import SwiftUI

struct MemberButton: View {
    var body: some View {
        Button(action: {}){
            Text("Become a Member")
                .padding(.leading, 20)
                .padding(.trailing, 20)
                .padding(.top, 5)
                .padding(.bottom, 5)
        }
        .foregroundStyle(
            LinearGradient(colors: [Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)), Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))], startPoint: .topLeading, endPoint: .bottomTrailing),
        )
        .overlay(
            Capsule()
                .stroke(
                    LinearGradient(colors: [Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)), Color(#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1))], startPoint: .topLeading, endPoint: .bottomTrailing),
                    lineWidth: 1.5
                )
        )
    }
}

#Preview {
    MemberButton()
}
