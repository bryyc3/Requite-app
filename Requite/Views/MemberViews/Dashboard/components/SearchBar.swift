//
//  SearchBar.swift
//  Requite
//
//  Created by Bryce King on 10/26/26.
//

import SwiftUI

struct SearchBar: View {
    @Binding var searchText: String
    
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
            TextField("Search for a Reward Program", text: $searchText)
                .autocorrectionDisabled()
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(50)
        .shadow(color: Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)).opacity(0.50), radius: 8, x: 0, y: 4)
    }
}

#Preview {
    //SearchBar()
}
