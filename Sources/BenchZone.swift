//
//  BenchZone.swift
//  BenchFactory
//
//  Created by Said Sikira on 2/9/16.
//  Copyright © 2016 CityOS. All rights reserved.
//

import protocol CoreCityOS.ZoneType
import protocol CoreCityOS.DeviceType

public struct BenchZone: ZoneType {
    public let zoneID: String
    public let name: String
    public let creationDate: NSDate?
    public var devices = [DeviceType]()
    
    public init(zoneID: String, name: String) {
        self.zoneID = zoneID
        self.name = name
        self.creationDate = NSDate()
    }
}
