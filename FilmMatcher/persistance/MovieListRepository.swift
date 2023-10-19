//
//  MovieListRepository.swift
//  FilmMatcher
//
//  Created by Efe on 13.10.2023.
//

import Foundation
import UIKit

class MovieListRepository : CrudProtocol {
    
    typealias Entity = Movie
    
    private var descriptionRepository : DescriptionRepository
    private var listOfExistingMovies : MovieList
    
    init() {
        descriptionRepository = DescriptionRepository()
        listOfExistingMovies = MovieList(movies: [])
        listOfExistingMovies.movies = createMovies()
    }
    
    private func createMovies() -> [Movie] {
        return [
            Movie(id: 1,
                  name: "The Matrix",
                  rating: 8.7,
                  description: descriptionRepository.getDescriptionByID(1)!,
                  genres: [.ACTION, .CYBERPUNK, .SCIFi],
                  image: "The Matrix"),
            Movie(id: 2,
                  name: "The Godfather",
                  rating:  9.2,
                  description: descriptionRepository.getDescriptionByID(2)!, genres: [.THRILLER, .MAFIA, .DRAMA],
                  image: "The Godfather")
        ]
    }
    
    func add(_ entity: Movie) {
        listOfExistingMovies.movies.append(entity)
    }
    
    func read(_ id: Int) -> Optional<Movie> {
        for i in listOfExistingMovies.movies {
            if(i.id == id) {
                return i
            }
        }
        return Optional.none
    }
    
    func getAllMovies() -> MovieList {
        return self.listOfExistingMovies
    }
    
    func update(_ id: Int, _ newEntity: Movie) {
        if let index = listOfExistingMovies.movies.firstIndex(where: { $0.id == id }) {
            listOfExistingMovies.movies[index] = newEntity
        }
    }
    
    func delete(_ indexOf: Int) {
        if let index = listOfExistingMovies.movies.firstIndex(where: { $0.id == indexOf }) {
            listOfExistingMovies.movies.remove(at: index)
        }
    }
}
