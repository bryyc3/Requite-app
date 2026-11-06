//
//  ProgramCard.swift
//  Requite
//
//  Created by Bryce King on 10/26/26.
//

import SwiftUI

struct ProgramCard: View {
    var body: some View {
        HStack{
            Image(systemName: "person.circle.fill")
                .font(.system(size: 50))
                .padding(8)
            VStack(alignment: .leading){
                Text("Chick Fil A")
                    .bold()
                    .font(.system(size: 25))
                Text("12456 points")
                    .font(.system(size: 18))
            }
            .padding(12)
            
            HStack(spacing: 15){
                Image(systemName: "trash")
                    .foregroundStyle(.red)
                Image(systemName: "star.fill")
                    .foregroundStyle(.gray)
                Image(systemName: "chevron.right")
                    .foregroundStyle(LinearGradient(
                        colors: [Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)), Color(#colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1))],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing))
                    .bold()
                    .padding(.leading, 15)
            }
            .padding()
            .font(.system(size: 20))
        }
        .background(.white)
        .cornerRadius(45)
        .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 5)
        
    }
}

#Preview {
    ProgramCard()
}
