//
//  File.swift
//  
//
//  Created by CAU Jonny on 27/04/22.
//

import Foundation
import Tracking
import Datadog

public final class DataDogTrackingService: TrackingService {
    let logger = Logger.builder
        .sendNetworkInfo(true)
        .printLogsToConsole(true, usingFormat: .shortWith(prefix: "[iOS App] "))
        .build()
    
    
    public func track(event: Event) {

        
        logger.info(event.name, attributes: ["context": "startup flow"])
    }
    
    public var trackingEvents: [Event] {
        return [
            Event.loginWithEmail    ,
            Event.loginWithGoogle   ,
            Event.loginWithApple ,
            Event.startUp
        ]
    }
    
    
}
