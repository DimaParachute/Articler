//
//  ArticlesListFactory.swift
//  Articler
//
//  Created by Дмитрий Фетюхин on 30.03.2023.
//

import Foundation

protocol ArticlesListFactory: AnyObject {
    
    func createArticlesList() -> ArticlesListView
}

final class ArticlesListFactoryImpl: ArticlesListFactory {
    
    public func createArticlesList() -> ArticlesListView {
        let apiArticlesService = ApiArticlesService()
        let viewModel = ArticlesListViewModel(apiArticlesService)
        return ArticlesListView(viewModel: viewModel)
    }
}
