//
//  SearchBar.swift
//  Requite
//
//  Created by Bryce King on 10/26/26.
//

import SwiftUI

struct SearchBar: View {
    
    @FocusState private var searchFocus: Bool
    @Binding var searchText: String
    @Binding var isSearching: Bool
    
    var body: some View {
        HStack{
            if(isSearching){
                Button {
                    searchFocus.toggle()
                    searchText = ""
                    
                } label: {
                    Image(systemName: "chevron.backward")
                        .font(.system(size: 25))
                        .foregroundStyle(
                            LinearGradient(colors: [Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)), Color(#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1))], startPoint: .topLeading, endPoint: .bottomTrailing),
                        )
                }
            }
            HStack{
                Image(systemName: "magnifyingglass")
                TextField("Search for a Reward Program", text: $searchText)
                    .autocorrectionDisabled()
                    .focused($searchFocus)
                    .onChange(of: searchFocus){_,
                        focused in isSearching = focused
                        
                    }
            }
            .padding()
            .background(Color(.systemBackground))
            .cornerRadius(50)
            .shadow(color: Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)).opacity(0.50), radius: 8, x: 0, y: 4)
        }
    }
}

#Preview {
    //SearchBar()
}
