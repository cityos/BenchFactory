//
//  Bench.swift
//  BenchFactory
//
//  Created by Said Sikira on 1/28/16.
//  Copyright © 2016 CityOS. All rights reserved.
//

import protocol CoreCityOS.DeviceType
import protocol CoreCityOS.LiveDataCollectionType
import struct CoreCityOS.DeviceData
import class CoreCityOS.DeviceLocation

public class Bench : DeviceType {
    public var deviceData : DeviceData
    public var creationDate : NSDate?
    public var location: DeviceLocation
    public var dataCollection: LiveDataCollectionType = BenchDataCollection()
    
    public init(deviceID: String, latitude: Double, longitude: Double) {
        self.deviceData = DeviceData(deviceID: deviceID)
        self.location = DeviceLocation(
            latitude: latitude,
            longitude: longitude
        )
    }
}
