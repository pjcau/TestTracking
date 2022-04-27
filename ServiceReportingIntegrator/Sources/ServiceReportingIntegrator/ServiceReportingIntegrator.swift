import Networking
import Tracking

public protocol ServiceReportingIntegrator {
     init(permission:PermissionTracking)
    
     func createTracker() -> TrackingService
    
     func createTracer() -> NetworkTracker?
}
