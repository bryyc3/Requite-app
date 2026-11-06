//
//  FavoritesCard.swift
//  Requite
//
//  Created by Bryce King on 10/26/26.
//

import SwiftUI

struct FavoritesCard: View {
    var body: some View {
        VStack{
            Image(systemName: "person.circle.fill")
                .font(.system(size: 40))
                //.frame(width: 10, height: 10)
            VStack{
                Text("Chick Fil A")
                    .font(.system(size: 25))
                    .bold()
                Text("12450 points")
                    .font(.system(size: 20))
            }
            .padding(.top, 5)
            .padding(.bottom, 15)
                
            Image(systemName: "star.fill")
                .font(.system(size: 25))
        }
        .padding()
        .foregroundColor(.black)
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.white)
                .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 5)
        )
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(
                    LinearGradient(colors: [Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)), Color(#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1))], startPoint: .topLeading, endPoint: .bottomTrailing),
                    lineWidth: 2
                )
        )
        
    }
}

#Preview {
    FavoritesCard()
}
