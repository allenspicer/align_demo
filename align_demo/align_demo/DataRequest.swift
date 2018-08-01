//
//  DataRequest.swift
//  align_demo
//
//  Created by Allen Spicer on 8/1/18.
//  Copyright © 2018 surfbreak. All rights reserved.
//

import UIKit

class DataRequest: NSObject {
    
    var animalsList: [[String:String]] = [["type":"frog", "size":"small", "color":"green"],["type":"dog", "size":"medium", "color":"brown"],["type":"bird", "size":"small", "color":"white"]]
    var dataObject : [Animal]?
    
    override init() {
        super.init()
        guard let json = serializeJSON(from: animalsList) else {return}
        guard let arrayOfAnimals = createArrayOfStructs(with: json) else {return}
        dataObject = arrayOfAnimals
    }
    
    func createArrayOfStructs(with string : String) -> [Animal]?{
        guard let data = string.data(using: .utf8) else {return nil}
        do{
            let structArray = try JSONDecoder().decode([Animal].self, from: data)
            return structArray
        }catch{}
        return nil
    }
    
    
    func serializeJSON(from object:Any) -> String? {
        guard let data = try? JSONSerialization.data(withJSONObject: object, options: []) else {
            return nil
        }
        return String(data: data, encoding: String.Encoding.utf8)
    }


}

