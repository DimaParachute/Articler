//
//  ArticlesListFactory.swift
//  Articler
//
//  Created by Дмитрий Фетюхин on 30.03.2023.
//

import Foundation
import ArticlerKit

public protocol ArticlesListFactory: AnyObject {
    
    func createArticlesList() -> ArticlesListView
}

public final class ArticlesListFactoryImpl: ArticlesListFactory {
    
    public init() {}
    
    public func createArticlesList() -> ArticlesListView {
//        let apiArticlesService = ApiArticlesService()
        let mockArticlesService = MockArticlesService()
        let viewModel = ArticlesListViewModel(mockArticlesService)
        return ArticlesListView(viewModel: viewModel)
    }
}
