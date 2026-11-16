//
//  SearchResult.swift
//  Requite
//
//  Created by Bryce King on 11/12/26.
//

import SwiftUI

struct SearchResult: View {
    let business: BusinessInfo
    
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text(business.name)
                    .bold()
                    .font(.system(size: 25))
                    .foregroundStyle(.black)
                HStack{
                    Text(business.location)
                        .font(.system(size: 18))
                        .foregroundStyle(.black)
                    if(business.member ?? false == true){
                        Image(systemName: "circle.fill")
                            .font(.system(size: 7))
                            .foregroundStyle(
                                LinearGradient(colors: [Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)), Color(#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1))], startPoint: .topLeading, endPoint: .bottomTrailing),
                            )
                        Text("Member")
                            .font(.system(size: 18))
                            .foregroundStyle(.black)
                    }
                }
            }
            Spacer()
            Image(systemName: "person.circle.fill")
                .font(.system(size: 50))
                .padding(8)
                .foregroundStyle(.black)
        }
        .padding(.leading, 15)
        .padding(.trailing, 15)
        .padding(5)
    }
}

#Preview {
    // SearchResult()
}
