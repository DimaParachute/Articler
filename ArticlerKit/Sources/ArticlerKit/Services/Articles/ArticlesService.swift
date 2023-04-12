//
//  ArticlesService.swift
//  Articler
//
//  Created by Дмитрий Фетюхин on 03.04.2023.
//

import Combine

public protocol ArticlesService: AnyObject {
    
    func fetchArticles() -> AnyPublisher<ArticlesContainer, Error>
}
