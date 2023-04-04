//
//  ArticlesRequest.swift
//  Articler
//
//  Created by Дмитрий Фетюхин on 03.04.2023.
//

import Foundation
import Combine

enum ArticlesRequest {
    
    static let agent = Agent()
    static let base = URL(string: "https://newsapi.org/v2")!
}

extension ArticlesRequest {
    
    static func articles() -> AnyPublisher<ArticlesContainer, Error> {
        var request = URLRequest(url: base.appendingPathComponent("top-headlines"))
        request.url?.append(queryItems: [
            URLQueryItem(name: "country", value: "us"),
            URLQueryItem(name: "apiKey", value: APIConstants.apiKey)
        ])
        return run(request)
    }
    
    static func run<T: Decodable>(_ request: URLRequest) -> AnyPublisher<T, Error> {
        agent.run(request)
            .map(\.value)
            .eraseToAnyPublisher()
    }
}
