//
//  File.swift
//  
//
//  Created by CAU Jonny on 27/04/22.
//

import Foundation

public final class TrackingManager: TrackingService {
    // MARK: - Properties -
    
    // The list of services added to this class as observers.
    internal private(set) var services = [TrackingService]()
    
    // MARK: - Singleton -
    public static let shared = TrackingManager()
    private init() {}
    
    // MARK: - Methods -
    
    /**
     Adds a service as an observer.
     */
    public func add(service: TrackingService) {
        self.services.append(service)
    }
 
    // MARK: - AnalyticsService -
    func initialize() {

    }
    
    public func track(event: Event) {
        // When an event is tracked by AnalyticsManager,
        // it will notify all the services that has been added to it.
        for service in services where service.shouldTrack(event: event) {
            service.track(event: event)
        }
    }
}
