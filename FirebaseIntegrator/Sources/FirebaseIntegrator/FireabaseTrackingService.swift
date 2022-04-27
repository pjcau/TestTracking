//
//  File.swift
//  
//
//  Created by CAU Jonny on 27/04/22.
//

import Foundation
import Tracking
import FirebaseAnalytics

public final class FirebaseTrackingService: TrackingService {
    
    
    public func track(event: Event) {
        Analytics.logEvent(event.name, parameters: event.paramenters)
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
