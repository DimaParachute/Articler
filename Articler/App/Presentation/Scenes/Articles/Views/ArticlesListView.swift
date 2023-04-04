//
//  ArticlesListView.swift
//  Articler
//
//  Created by Дмитрий Фетюхин on 30.03.2023.
//

import SwiftUI

struct ArticlesListView: View {
    
    @ObservedObject var viewModel: ArticlesListViewModel

    var body: some View {
        contentView()
            .onAppear {
                viewModel.handleEvent(.onAppear)
            }
    }
    
    @ViewBuilder func contentView() -> some View {
        switch viewModel.state {
        case .start:
            ProgressView()
            
        case .loading:
            ProgressView()
            
        case let .success(articles):
            List(articles, id: \.id) {
                ArticleCellView(title: $0.title ?? "",
                                description: $0.description ?? "",
                                urlToImage: $0.urlToImage ?? "")
            }
        }
    }
}

struct ArticlesListView_Previews: PreviewProvider {
    
    static var previews: some View {
        ArticlesListFactoryImpl().createArticlesList()
    }
}
