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
    
    public func track(event: Event) {
        //
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
