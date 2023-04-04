//
//  Article.swift
//  Articler
//
//  Created by Дмитрий Фетюхин on 30.03.2023.
//

import Foundation

struct Article: Codable, Identifiable {
    
    var id = UUID()
    var source: Source
    var title: String?
    var description: String?
    var url: String?
    var urlToImage: String?
    var publishedAt: String?
    
    private enum CodingKeys: String, CodingKey {
        case source, title, description, url, urlToImage, publishedAt
    }
}

struct Source: Codable {
    
    var name: String?
}
