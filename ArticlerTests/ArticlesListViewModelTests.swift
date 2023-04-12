//
//  ArticlesListViewModelTests.swift
//  ArticlesListViewModelTests
//
//  Created by Дмитрий Фетюхин on 30.03.2023.
//

import XCTest
@testable import Articler

final class ArticlesListViewModelTests: XCTestCase {
    
    var sut: ArticlesListViewModel!

    override func setUpWithError() throws {
        try super.setUpWithError()
        
        sut = ArticlesListViewModel(MockArticlesService())
    }

    override func tearDownWithError() throws {
        sut = nil
        
        try super.tearDownWithError()
    }

    func testInit_stateIsStart() throws {
    }
}
