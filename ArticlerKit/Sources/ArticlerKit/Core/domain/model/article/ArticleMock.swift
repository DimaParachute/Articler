//
//  ArticleMock.swift
//  Articler
//
//  Created by Дмитрий Фетюхин on 04.04.2023.
//

import Foundation

// MARK: - Mock data
public extension Article {
    
    static let mock = loadArticles()
}

private struct ArticlesMock: Decodable {
    
    let articles: [Article]
}

private func loadArticles() -> [Article] {
    guard let url = Bundle.main.url(forResource: "ArticlesMock", withExtension: "json"),
          let data = try? Data(contentsOf: url) else { return [] }
    let decoder = JSONDecoder()
    decoder.keyDecodingStrategy = .convertFromSnakeCase
    let jsonMock = try? decoder.decode(ArticlesMock.self, from: data)
    return jsonMock?.articles ?? []
}
