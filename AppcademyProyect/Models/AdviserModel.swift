//
//  AdviserModel.swift
//  AppcademyProyect
//
//  Created by Janelly on 13/02/24.
//

import UIKit

struct Adviser: Codable {
    var name: String
    var email: String
    var curriculum: String
    var rfc: String
    var profesionalID: String?
    var active: Bool
    var descripcion: String
    var subjects: [String]
    var numberOfSessions: Int
    var score: Float
    var level: LevelAdviser
    var photoAdviser: String?
    var avaiability: [(String, String)]
    var pricePerClass: Double
    // horario de disponibilidad
    // precio por clase

    //func scheduleAvaiability(day: String, hour: String) -> Bool{
        //validacion de el dia y la hora en una misma linea
       // return avaiability.contains { $0 == (day,hour) }
        
      
    
}
