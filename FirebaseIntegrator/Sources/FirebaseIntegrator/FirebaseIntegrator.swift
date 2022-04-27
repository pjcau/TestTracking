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
import FirebaseAnalytics
import Firebase

public class FirabaseIntegrator : ServiceReportingIntegrator {
    required public init(permission:PermissionTracking){
        //init sdk with permission
        
        if ((FirebaseApp.allApps?.isEmpty) == nil) {
            firebaseInit(permission:permission)
        }
        
     }
    
    public func createTracker() -> TrackingService {
        return FirebaseTrackingService()
    }
    
    
    public func createTracer() -> NetworkTracker? {
        return nil
    }
    
    
    fileprivate func firebaseInit(permission: PermissionTracking) {
        FirebaseApp.configure()
    }
    
}
