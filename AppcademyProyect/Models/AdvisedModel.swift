//
//  AdvisedModel.swift
//  AppcademyProyect
//
//  Created by Janelly on 13/02/24.
//

import UIKit

struct Advised: Codable {
    var name: String
    var email: String
    var age: String
    var subjects: [String]
    var numberOfSessions: Int
    var active: Bool
    var photoAdvised: String?
    //var isAdviser: Bool
}
