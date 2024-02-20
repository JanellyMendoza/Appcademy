//
//  DataBase.swift
//  AppcademyProyect
//
//  Created by Janelly on 13/02/24.
//
//hacer bandera y con eso poder identificar dentro de las funciones el tipo de usario que es. usar filter
import Foundation
enum UserType: String {
    case ADVISER
    case ADVISED
    case ALL
}
class DataBase{
    static let shared = DataBase()
    let userDefaults = UserDefaults.standard
    
    //primero guardar el usuario actual
    func saveCurrentUser(user: Any, type: UserType){
        if type == UserType.ADVISER{
            let userData = user as! Adviser
            userDefaults.putData(object: userData, key: "UserAdviser")
        }else{
            let userData = user as! Advised
            userDefaults.putData(object: userData, key: "UserAdvised")
        }
    }
    //obtener, elimnar users, verificar existencia de userAdviser y userAdvised
    /*func getUser(type: UserType) -> Any{
        if type == UserType.ADVISER{
            u
        }
    }*/
}

extension UserDefaults{
    
    func putData<T:Encodable>(object : T, key : String){
        let jsonEncoder = JSONEncoder()
        if let userEncode = try? jsonEncoder.encode(object){
            self.set(userEncode, forKey: key)
        }
    }
    
    func getData<T : Decodable>(type : T.Type, key : String) -> T?{
        if let data = self.data(forKey: key){
            let jsonDecoder = JSONDecoder()
            if let user = try? jsonDecoder.decode(type, from: data){
                return user
            }else{
                print("Error decoding data")
                return nil
            }
        }else{
            print("Error getting data")
            return nil
        }
    }
    
    func deleteData(key : String){
        self.removeObject(forKey: key)
        print("Delete data: \(key)")
    }
    
}
