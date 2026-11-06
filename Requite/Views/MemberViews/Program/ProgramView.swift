//
//  ProgramView.swift
//  Requite
//
//  Created by Bryce King on 10/20/26.
//

import SwiftUI

struct ProgramView: View {
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.9609374404, green: 0.9609374404, blue: 0.9609374404, alpha: 1))
                .ignoresSafeArea()
            VStack{
                HStack{
                    Image(systemName: "person.circle.fill")
                        .font(.system(size: 65))
                    VStack(alignment: .leading){
                        Text("Chick Fil A")
                            .font(.system(size: 32))
                            .bold()
                        Text("Nationwide")
                            .font(.system(size: 20))
                    }
                    .padding(.leading, 5)
                    .padding(.trailing, 20)
                    Image(systemName: "star.fill")
                        .font(.system(size: 25))
                }
                HStack{
                    MemberButton()
                    InfoIcon()
                }
                MemberInfo()
                Text("Rewards")
                    .bold()
                    .font(.system(size: 25))
                    .foregroundStyle(LinearGradient(
                        colors: [Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)), Color(#colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1))],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing))
            }
        }
    }
}

#Preview {
    ProgramView()
}
