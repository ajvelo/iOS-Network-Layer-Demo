//
//  ViewController.swift
//  NetworkLayer
//
//  Created by Malcolm Kumwenda on 2018/03/05.
//  Copyright © 2018 Malcolm Kumwenda. All rights reserved.
//

import UIKit
import RealmSwift

class MainViewController: UIViewController {
    
    let networkManager = NetworkManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        networkManager.getNewMovies(page: 1) { movies, error in
//            let realm = try! Realm()
//            try! realm.write {
//                for movie in movies! {
//                    let movieRealm = MovieRealm()
//                    movieRealm.id = movie.id
//                    movieRealm.posterPath = movie.posterPath
//                    movieRealm.title = movie.title
//                    movieRealm.releaseDate = movie.releaseDate
//                    movieRealm.rating = movie.rating
//                    movieRealm.overview = movie.overview
//                    realm.add(movieRealm, update: true)
//                }
//            }
            DBOperations().saveMovies(movies: movies!)
        }
        
//        let movies = try! Realm().objects(MovieRealm.self)
//        for movie in movies {
//            print(movie)
//        }
    }
}
