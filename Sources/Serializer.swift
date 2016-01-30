//
//  Serializer.swift
//  BenchFactory
//
//  Created by Said Sikira on 1/30/16.
//  Copyright © 2016 CityOS. All rights reserved.
//

import CoreCityOS
import Flowthings

class Serializer {
    
    /// Serializes live data
    class func serializeLiveData(jsonData json: JSON) throws -> [LiveDataCollectionType] {
        
        var dataCollection = [LiveDataCollectionType]()
        
        if let array = json.array {
            let range = 0..<array.count
            
            for i in range {
                let benchID = json["body"][i]["id"].string!
                let creationDate = NSDate(timeIntervalSince1970: json["body"][i]["creationDate"].double! / 1000)
                
                var benchData = BenchDataCollection(deviceID: benchID, creationDate: creationDate)
                
                for reading in benchData.allReadings {
                    let jsonKey = reading.jsonKey
                    
                    if let dataReading = json["body"][i]["elems"][jsonKey]["value"].double {
                        benchData[jsonKey]?.addDataPoint(DataPoint(value: dataReading))
                        
                        dataCollection.append(benchData)
                    }
                }
            }
        }
        
        return dataCollection
    }
}