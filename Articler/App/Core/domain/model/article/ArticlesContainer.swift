//
//  ArticlesContainer.swift
//  Articler
//
//  Created by Дмитрий Фетюхин on 30.03.2023.
//

import Foundation

struct ArticlesContainer: Decodable {
    
    let totalResults: Int
    let articles: [Article]
}
