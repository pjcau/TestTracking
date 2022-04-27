//
//  File.swift
//  
//
//  Created by CAU Jonny on 27/04/22.
//

import Foundation
import Tracking
import Networking
import ServiceReportingIntegrator

public class DataDogIntegrator : ServiceReportingIntegrator {
    required public init(permission:PermissionTracking){
        //init sdk with permission

    }
    
    public func createTracker() -> TrackingService {
        return DataDogTrackingService()
    }
    
    
    public func createTracer() -> NetworkTracker {
        return DataDogTracer()
    }
    
}
