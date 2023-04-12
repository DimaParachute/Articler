//
//  Article.swift
//  Articler
//
//  Created by Дмитрий Фетюхин on 30.03.2023.
//

import Foundation

public struct Article: Codable, Identifiable {
    
    public var id = UUID()
    public var source: Source
    public var title: String?
    public var description: String?
    public var url: String?
    public var urlToImage: String?
    public var publishedAt: String?
    
    private enum CodingKeys: String, CodingKey {
        case source, title, description, url, urlToImage, publishedAt
    }
}

public struct Source: Codable {
    
    public var name: String?
}
