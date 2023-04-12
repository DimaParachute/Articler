//
//  ArticlesContainer.swift
//  Articler
//
//  Created by Дмитрий Фетюхин on 30.03.2023.
//

import Foundation

public struct ArticlesContainer: Decodable {
    
    public let totalResults: Int
    public let articles: [Article]
}
