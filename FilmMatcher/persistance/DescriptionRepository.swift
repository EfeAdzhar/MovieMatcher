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
        ),
        Description(filmId: 2,
                    summary: "The Godfather is a classic film that follows the patriarch of the Corleone crime family, Vito Corleone, as he navigates the world of organized crime while his son Michael becomes increasingly embroiled in the family's violent legacy. The movie explores themes of power, loyalty, and the moral compromises made in pursuit of maintaining control in the criminal underworld.",
                    director: "Francis Ford Coppola",
                    releaseDate: ReleaseDate(day: 14, month: "March", year: 1972),
                    duration: Duration(hours: 2, minutes: 55)
                   ),
        Description(filmId: 3,
                    summary: "The Butterfly Effect is a psychological thriller that explores the concept of time travel. It follows the life of Evan Treborn, who discovers he can revisit his past and change events. However, as he makes alterations, unintended consequences create a series of disturbing and catastrophic outcomes.",
                    director: "Eric Bress and J. Mackye Gruber",
                    releaseDate: ReleaseDate(day: 23, month: "January", year: 2004),
                    duration: Duration(hours: 1, minutes: 53))
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
