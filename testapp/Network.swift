//
//  Network.swift
//  testapp
//
//  Created by Shaikhussen Basha on 09/02/22.
//

import Foundation



class NetworkManager {
    static let shared = NetworkManager()
    private init(){}
    
    func fetchData () ->[Property]
    {
        var arrayProperty = [Property]()
        
        if let url = Bundle.main.url(forResource: "data", withExtension: "json")
        {
            do {
             let data =    try Data(contentsOf: url)
                let resonce = try JSONDecoder().decode(Welcome.self, from: data)
                arrayProperty = resonce.properties
            } catch let err {
                print(err)
            }
            
        }
      
      return arrayProperty
        
    }
}
