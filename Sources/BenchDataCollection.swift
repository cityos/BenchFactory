//
//  BenchDataCollection.swift
//  BenchFactory
//
//  Created by Said Sikira on 1/28/16.
//  Copyright © 2016 CityOS. All rights reserved.
//

import CoreCityOS

extension DataType {
    public static let IR = DataType(dataIdentifier: "IR")
    public static let UV = DataType(dataIdentifier: "UV")
    public static let GeneratedEnergy = DataType(dataIdentifier: "Generated Energy")
    public static let UsedEnergy = DataType(dataIdentifier: "Used Energy")
    public static let Pressure = DataType(dataIdentifier: "Pressure")
}

//MARK: BenchDataCollection implementation

public class BenchDataCollection: LiveDataCollectionType {
    
    public var deviceData = DeviceData(deviceID: "empty")
    public var creationDate = NSDate()
    
    //MARK: Define data types
    
    public var pressure: LiveDataType {
        return LiveData(
            dataType: .Pressure,
            jsonKey: "pressure",
            unitNotation: "psi"
        )
    }
    
    public var temperature : LiveDataType {
        return LiveData(
            dataType: .Temperature,
            jsonKey: "temperature",
            unitNotation: "C"
        )
    }
    
    public var humidity: LiveDataType {
        return LiveData(
            dataType: .Humidity,
            jsonKey: "humidity",
            unitNotation: "%"
        )
    }
    
    public var UV: LiveDataType {
        return LiveData(
            dataType: .UV,
            jsonKey: "uv",
            unitNotation: "UV"
        )
    }
    
    public var naturalLight: LiveDataType {
        return LiveData(
            dataType: .NaturalLight,
            jsonKey: "light",
            unitNotation: "lux"
        )
    }
    
    public var generatedEnergy: LiveDataType {
        return LiveData(
            dataType: .GeneratedEnergy,
            jsonKey: "generated",
            unitNotation: "Mhw"
        )
    }
    
    public var usedEnergy: LiveDataType {
        return LiveData(
            dataType: .UsedEnergy,
            jsonKey: "used", unitNotation:
            "Mhw"
        )
    }
    
    public var noise: LiveDataType {
        return LiveData(
            dataType: .Noise,
            jsonKey: "noise",
            unitNotation: "db"
        )
    }
    
    public var allReadings = [LiveDataType]()
    
    //MARK: Init methods
    
    /// Creates array of `allReadings` property required by `LiveDataCollectionType`
    func commonInit() {
        self.allReadings = [
            pressure,
            humidity,
            temperature,
            UV,
            naturalLight,
            generatedEnergy,
            usedEnergy,
            noise
        ]
    }
    
    public init() {
        commonInit()
    }
    
    public init(deviceID: String, creationTimestamp: NSTimeInterval) {
        self.deviceData = DeviceData(deviceID: deviceID)
        self.creationDate = NSDate(timeIntervalSince1970: creationTimestamp)
        commonInit()
    }
    
    public init(deviceID: String, creationDate: NSDate) {
        self.deviceData = DeviceData(deviceID: deviceID)
        self.creationDate = creationDate
        commonInit()
    }
    
}
