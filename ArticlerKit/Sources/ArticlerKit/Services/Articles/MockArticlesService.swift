//
//  MockArticlesService.swift
//  Articler
//
//  Created by Дмитрий Фетюхин on 04.04.2023.
//

import Foundation
import Combine

public final class MockArticlesService: ArticlesService {
    
    public init() {}
    
    public func fetchArticles() -> AnyPublisher<ArticlesContainer, Error> {
        Just(ArticlesContainer(totalResults: 20, articles: Article.mock))
            .setFailureType(to: Error.self)
            .eraseToAnyPublisher()
    }
}
