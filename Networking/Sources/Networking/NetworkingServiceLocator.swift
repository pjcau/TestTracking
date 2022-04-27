//
//  File.swift
//  
//
//  Created by feanor on 26/04/22.
//

import Foundation


final class NetworkingServiceLocator {
	public let urlSession: URLSession

	public let defaultSessionDelegate: CustomURLSessionDelegate

	fileprivate(set) static var _shared: NetworkingServiceLocator!

	public static var shared: NetworkingServiceLocator {
		_shared!
	}

	public static func build(trackers: [NetworkTracker] = []) {
		_shared = NetworkingServiceLocator(trackers: trackers)
	}

	private init(trackers: [NetworkTracker]) {
		print("costruttore")
		defaultSessionDelegate = CustomURLSessionDelegate(trackers: trackers)
		urlSession = URLSession(configuration: .default, delegate: defaultSessionDelegate, delegateQueue: .main)
	}
}
