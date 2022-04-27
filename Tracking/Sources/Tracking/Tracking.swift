import Foundation

public enum PermissionTracking {
    case allow
    case deny
    case pending
}

public protocol TrackingService {

    func track(event: Event)
    
    var trackingEvents: [Event] { get }

}


// Default behavior
 extension TrackingService {
     public var trackingEvents: [Event] {
        return Event.allCases
    }
}

// Convenience methods
 extension TrackingService {
    func shouldTrack(event: Event) -> Bool {
        return trackingEvents.contains(event)
    }
}


public struct Tracking {
    public private(set) var text = "Hello, World!"

    public init() {
    }
}
