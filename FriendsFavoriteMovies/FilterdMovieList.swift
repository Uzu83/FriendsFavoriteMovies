//
//  FilterdMovieList.swift
//  FriendsFavoriteMovies
//
//  Created by 東郷翔士希 on 2024/11/09.
//

import SwiftUI

struct FilterdMovieList: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationSplitView {
            MovieList(titleFilter: searchText)
                .searchable(text: $searchText)
        }detail:{
            Text("Select a movie")
                .navigationTitle("Movie")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    FilterdMovieList()
        .modelContainer(SampleData.shared.modelContainer)
}
