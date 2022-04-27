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
import Datadog

public class DataDogIntegrator : ServiceReportingIntegrator {
    required public init(permission:PermissionTracking){
        //init sdk with permission

        DataDogInit(permission:permission)
    }
    
    public func createTracker() -> TrackingService {
        return DataDogTrackingService()
    }
    
    
    public func createTracer() -> NetworkTracker? {
        return DataDogTracer()
    }
    
    
    
    func convertGrand(permission : PermissionTracking) -> TrackingConsent {
        switch permission {
        case .allow :
            return .granted
            
        case .deny :
            return .notGranted
            
        case .pending :
            return .pending
        }
    }
    
    fileprivate func DataDogInit(permission: PermissionTracking) {
        let _ = convertGrand(permission: permission)
        
        Datadog.initialize(
            appContext: .init(),
            trackingConsent: .granted,
            configuration: Datadog.Configuration
                .builderUsing(clientToken: "pub5921522284dddc7b1b13e46acd50317f", environment: "dev")
                .set(serviceName: "app-pilot")
                .set(endpoint: .us1)
                .build()
        )
        Datadog.verbosityLevel = .debug
        
        Global.sharedTracer = Tracer.initialize(
            configuration: Tracer.Configuration(
                sendNetworkInfo: true
            )
        )

        let logger = Logger.builder
            .sendNetworkInfo(true)
            .printLogsToConsole(true, usingFormat: .shortWith(prefix: "[iOS App] "))
            .build()
        
        logger.debug("Datadog init")
    }
    
}
