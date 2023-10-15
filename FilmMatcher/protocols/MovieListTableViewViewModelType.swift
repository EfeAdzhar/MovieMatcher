//
//  MovieListViewModelType.swift
//  FilmMatcher
//
//  Created by Efe on 13.10.2023.
//

import Foundation

protocol MovieListTableViewViewModelType {
    func numberOfRows() -> Int
    func getMovies() -> MovieList
    func cellViewModel(forIndexPath indexPath: IndexPath) -> MovieListTableViewCellViewModelType?
    func descriptionViewModel(forIndexPath indexPath: IndexPath) -> DescriptionViewModelType?
}
