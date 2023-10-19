//
//  MovieListViewModel.swift
//  FilmMatcher
//
//  Created by Efe on 12.10.2023.
//

import Foundation

class MovieListViewModel : MovieListTableViewViewModelType {
    private var moviewListRepository : MovieListRepository
    private var selectIndexPath : IndexPath?

    init() {
        moviewListRepository = MovieListRepository()
    }
    
    public func getMovies() -> MovieList {
        return self.moviewListRepository.getAllMovies()
    }
    
    func numberOfRows() -> Int {
       return moviewListRepository.getAllMovies().movies.count
    }
    
    func cellViewModel(forIndexPath indexPath: IndexPath) -> MovieListTableViewCellViewModelType? {
        let movies = getMovies().movies[indexPath.row]
        return MovieListCellViewModel(movie: movies)
    }
    
    func descriptionViewModel() -> DescriptionViewModelType? {
        guard let selectIndexPath = selectIndexPath else {return nil}
        let description = getMovies().movies[selectIndexPath.row].description
        return DescriptionViewModel(description)
    }
    
    
    func selectRow(atIndexPath indexPath: IndexPath) {
        self.selectIndexPath = indexPath
    }
}
