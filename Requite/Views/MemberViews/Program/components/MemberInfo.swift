//
//  MemberInfo.swift
//  Requite
//
//  Created by Bryce King on 11/2/26.
//

import SwiftUI

struct MemberInfo: View {
    var body: some View {
        HStack{
            Text("7000")
                .bold()
                .foregroundStyle(
                    LinearGradient(colors: [Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)), Color(#colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1))], startPoint: .topLeading, endPoint: .bottomTrailing),
                )
            Text("redeemable points")
        }
        .font(.system(size: 23))
    }
}

#Preview {
    MemberInfo()
}
