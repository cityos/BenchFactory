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
    
    func serializeLiveData(jsonData json: JSON) throws -> [LiveDataCollectionType] {
        return [BenchDataCollection()]
    }
}