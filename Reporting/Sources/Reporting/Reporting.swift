import Networking
import Tracking
import DataDogIntegration
import ServiceReportingIntegrator


public struct Reporting {
    public private(set) var text = "Hello, World!"
    
    public init() {
        
    }
    
    public static func configure(permission: PermissionTracking) {
        // no mandatory //deve stare su una vista
        
        let dataDogIntegrator = DataDogIntegrator(permission:permission)
        
        Reporting.addInIngetration(dataDogIntegrator, network:true)
        
    }
    
    static func addInIngetration( _ serviceIntegrator:ServiceReportingIntegrator,  network: Bool){
        
        TrackingManager.shared.add(service: serviceIntegrator.createTracker())
        
        if network {
            Networking.register(serviceIntegrator.createTracer())
        }
    }
}
