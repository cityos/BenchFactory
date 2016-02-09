//
//  BenchFactory.swift
//  BenchFactory
//
//  Created by Said Sikira on 1/30/16.
//  Copyright © 2016 CityOS. All rights reserved.
//

import CoreCityOS
import Flowthings

public final class BenchFactory: FactoryType {
    
    /// Factory singleton instance
    public static let sharedInstance = BenchFactory()
    
    public init() {
    }
    
    private var api: FTAPI = {
        return FTAPI(
            accountID: "ceco",
            tokenID: "TWEFiZvO0KtvWMx5p24JvBbFhBA1oDL3"
        )
    }()
    
    public func getLatestData(completion: (data: [LiveDataCollectionType]?, error: ErrorType?) -> ()) {
        
        let findParams = FindParams()
        
        self.api.drop.find("f562e8c4f68056d244d594ce6", findParams: findParams)
            .then {
                body -> () in
                do {
                    let data = try Serializer.serializeLiveData(jsonData: body)
                    completion(data: data, error: nil)
                } catch {
                    throw error
                }
            }.error {
                error in
                completion(data: nil, error: error)
        }
    }
}
