//
//  DescriptionRepository.swift
//  FilmMatcher
//
//  Created by Efe on 13.10.2023.
//

import Foundation

class DescriptionRepository {
    private var descriptions: [Description] = [
        Description(filmId: 1,
                    summary: "The Matrix is a dystopian science fiction film in which a computer programmer named Neo discovers that reality is an illusion created by intelligent machines who have enslaved humanity. With the help of a group of rebels, Neo must embrace his newfound abilities to free humanity from the virtual world and wage a war against the machines.",
                    director: "The Wachowskis",
                    releaseDate: ReleaseDate(day: 31, month: "March", year: 1999),
                    duration: Duration(hours: 2, minutes: 16)
        )
    ]
    
    public func getAllDescriptions() -> [Description] {
        return self.descriptions
    }
    public func getDescriptionByID(_ movieId : Int) -> Optional<Description> {
        for i in descriptions {
            if(movieId == i.filmId) {
                return i
            }
        }
        return Optional.none
    }
}
