//
//  MovieListViewModel.swift
//  FilmMatcher
//
//  Created by Efe on 12.10.2023.
//

import Foundation

class MovieListViewModel : MovieListTableViewViewModelType {
    private var moviewListRepository : MovieListRepository

    init() {
        moviewListRepository = MovieListRepository()
    }
    
    public func getMovies() -> MovieList {
        return self.moviewListRepository.getAllMovies()
    }
    
    func descriptionViewModel(forIndexPath indexPath: IndexPath) -> DescriptionViewModelType? {
        let description = getMovies().movies[indexPath.row].description
        print(description)
        return DescriptionViewModel(description)
    }
    
    func cellViewModel(forIndexPath indexPath: IndexPath) -> MovieListTableViewCellViewModelType? {
        let movies = getMovies().movies[indexPath.row]
        return MovieListCellViewModel(movie: movies)
    }
    
    func numberOfRows() -> Int {
       return moviewListRepository.getAllMovies().movies.count
    }
}
