//
//  ArticlerApp.swift
//  Articler
//
//  Created by Дмитрий Фетюхин on 30.03.2023.
//

import SwiftUI
import ArticleriOS

@main
struct ArticlerApp: App {
    
    let persistenceController = PersistenceController.shared
    let articlesListFactory: ArticlesListFactory = ArticlesListFactoryImpl()

    var body: some Scene {
        WindowGroup {
            NavigationView {
                articlesListFactory.createArticlesList()
            }
        }
    }
}
