//
//  ArticlesListViewModel.swift
//  Articler
//
//  Created by Дмитрий Фетюхин on 30.03.2023.
//

import Foundation
import Combine

final class ArticlesListViewModel: ObservableObject {
    
    enum State {
        case start, loading, success([Article])
    }
    
    enum Event {
        case onAppear
    }
    
    @Published private(set) var state: State = .start
    
    private var articlesService: ArticlesService
    private var cancellables = [AnyCancellable]()
    
    // MARK: - Init
    
    init(_ articlesService: ArticlesService) {
        self.articlesService = articlesService
    }
    
    // MARK: - Public
    
    public func handleEvent(_ event: Event) {
        switch event {
        case .onAppear:
            fetchArticles()
        }
    }
    
    // MARK: - Private
    
    private func fetchArticles() {
        articlesService.fetchArticles()
            .receive(on: RunLoop.main)
            .sink(receiveCompletion: { error in
                print(error)
            }, receiveValue: { [unowned self] result in
                state = .success(result.articles)
            })
            .store(in: &cancellables)
    }
}
