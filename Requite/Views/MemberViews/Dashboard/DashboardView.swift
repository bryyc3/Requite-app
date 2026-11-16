//
//  DashboardView.swift
//  Requite
//
//  Created by Bryce King on 10/26/26.
//

import SwiftUI

struct DashboardView: View {
    @State private var model = DashboardViewModel()
    
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.9609374404, green: 0.9609374404, blue: 0.9609374404, alpha: 1))
                .ignoresSafeArea()
            
            NavigationStack{
                VStack{
                    SearchBar(searchText: $model.searchText, isSearching: $model.searching)
                        .padding()
                    if(!model.searching){
                        VStack(alignment: .leading){
                            Text("Favorites")
                                .font(.system(size: 30))
                                .foregroundStyle(LinearGradient(
                                    colors: [Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)), Color(#colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1))],
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing))
                                .bold()
                            HStack{
                                FavoritesCard()
                            }
                            .padding(.bottom, 50)
                            
                            Text("All Programs")
                                .font(.system(size: 30))
                                .foregroundStyle(LinearGradient(
                                    colors: [Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)), Color(#colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1))],
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing))
                                .bold()
                            VStack{
                                ProgramCard()
                            }
                        }
                        
                    } else {
                        ScrollView{
                            if let searchResults = model.searchResults?.programs {
                                ForEach(searchResults, id: \.self){ result in
                                    NavigationLink{
                                        ProgramView(businessId: result.id, member: result.member!)
                                    } label: {
                                        SearchResult(business: result)
                                    }
                                }
                            }
                        }
                    }
                    Spacer()
                }
                .task(id: model.searchText){await model.businessSearch()}
            }
        }
        
    }
}

#Preview {
    DashboardView()
}
