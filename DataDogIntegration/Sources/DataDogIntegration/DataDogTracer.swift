import Networking
import Foundation

public struct DataDogTracer: NetworkTracker {
    public private(set) var text = "Hello, World!"

	public func track(task: URLSessionTask, metrics: URLSessionTaskMetrics) {
		
	}
}
