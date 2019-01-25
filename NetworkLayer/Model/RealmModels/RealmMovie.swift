//
//  RealmMovie.swift
//  NetworkLayer
//
//  Created by Andreas Velounias on 24/01/2019.
//  Copyright © 2019 Malcolm Kumwenda. All rights reserved.
//

import Foundation
import RealmSwift

class MoveApiResponseRealm: Object {
    @objc dynamic var page: Int = 0
    @objc dynamic var numberOfResults: Int = 0
    @objc dynamic var numberOfPages: Int = 0
    let movies = List<MovieRealm>()
    @objc dynamic var uuid = UUID().uuidString
    
    override static func primaryKey() -> String? {
        return "uuid"
    }
}

class MovieRealm: Object {
    @objc dynamic var id: Int = 0
    @objc dynamic var posterPath: String = ""
    @objc dynamic var backdrop: String = ""
    @objc dynamic var title: String = ""
    @objc dynamic var releaseDate: String = ""
    @objc dynamic var rating: Double = 0.0
    @objc dynamic var overview: String = ""
    @objc dynamic var uuid = UUID().uuidString
    
    override static func primaryKey() -> String? {
        return "uuid"
    }
}
