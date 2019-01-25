//
//  DBOperations.swift
//  NetworkLayer
//
//  Created by Raynelle on 25/01/2019.
//  Copyright © 2019 Malcolm Kumwenda. All rights reserved.
//

import Foundation
import  RealmSwift

class DBOperations {
    let realm = try? Realm()
    func saveMovies(movies:[Movie]) {
       // let realm = try! Realm()
        try! realm?.write {
            for movie in movies {
                let movieRealm = MovieRealm()
                movieRealm.id = movie.id
                movieRealm.posterPath = movie.posterPath
                movieRealm.title = movie.title
                movieRealm.releaseDate = movie.releaseDate
                movieRealm.rating = movie.rating
                movieRealm.overview = movie.overview
                realm?.add(movieRealm, update: true)
            }
        }
    }


}
