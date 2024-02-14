//
//  DataBase.swift
//  AppcademyProyect
//
//  Created by Janelly on 13/02/24.
//
//hacer bandera y con eso poder identificar dentro de las funciones el tipo de usario que es. usar filter
import Foundation

class DataBase{
    static let shared = DataBase()
    let userDefaults = UserDefaults.standard
}

