//
//  File.swift
//  
//
//  Created by feanor on 26/04/22.
//

import Foundation

public final class Networking {

	private static var configured = false

	public static func configure() {
		defer {
			configured = true
		}

		guard !configured else {
			return
		}

		NetworkingServiceLocator.build()
	}
    
    public static func register(_ tracker: NetworkTracker) {
        configure()
        NetworkingServiceLocator.shared.defaultSessionDelegate.register(tracker)
    }
}
