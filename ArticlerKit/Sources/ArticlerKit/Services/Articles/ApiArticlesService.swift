//
//  ApiArticlesService.swift
//  Articler
//
//  Created by Дмитрий Фетюхин on 03.04.2023.
//

import Foundation
import Combine

final class ApiArticlesService: ArticlesService {
    
    func fetchArticles() -> AnyPublisher<ArticlesContainer, Error> {
        ArticlesRequest.articles()
    }
}
