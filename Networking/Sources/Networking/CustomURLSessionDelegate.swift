//
//  File.swift
//  
//
//  Created by feanor on 26/04/22.
//

import Foundation


public protocol NetworkTracker {
	func track(task: URLSessionTask, metrics: URLSessionTaskMetrics)
}

final class CustomURLSessionDelegate: NSObject, URLSessionTaskDelegate {

	private(set) var trackers: [NetworkTracker]

	init(trackers: [NetworkTracker]) {
		self.trackers = trackers
	}

	public func register(_ tracker: NetworkTracker) {
        self.trackers.append(contentsOf: [tracker]) 
	}

	func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics) {
		trackers.forEach { $0.track(task: task, metrics: metrics) }
	}
}
