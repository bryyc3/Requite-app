//
//  RewardCard.swift
//  Requite
//
//  Created by Bryce King on 11/2/26.
//

import SwiftUI

struct RewardCard: View {
    var body: some View {
        VStack{
            Image(systemName: "birthday.cake.fill")
                .font(.system(size: 80))
            Text("Club Sandwich")
                .bold()
            Text("900 points")
        }
        .padding()
        .background(.white)
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 5)
    }
}

#Preview {
    RewardCard()
}
