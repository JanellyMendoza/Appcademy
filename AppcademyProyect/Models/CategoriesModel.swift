//
//  CategoriesModel.swift
//  AppcademyProyect
//
//  Created by Janelly on 13/02/24.
//

import UIKit

struct Categories: Codable {
    var name: String
    var clasificacion: String
    var advisersAvaiables: [Adviser]
    var qualityRating: String
    var educationalLevel: String?
}
