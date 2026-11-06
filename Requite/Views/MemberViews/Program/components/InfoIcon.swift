//
//  InfoIcon.swift
//  Requite
//
//  Created by Bryce King on 11/2/26.
//

import SwiftUI

struct InfoIcon: View {
    var body: some View {
        Image(systemName: "info.circle")
            .font(.system(size: 20))
            .foregroundStyle(
                LinearGradient(colors: [Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)), Color(#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1))], startPoint: .topLeading, endPoint: .bottomTrailing),
            )
    }
}

#Preview {
    InfoIcon()
}
