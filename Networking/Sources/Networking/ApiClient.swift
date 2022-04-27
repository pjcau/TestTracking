//
//  File.swift
//  
//
//  Created by feanor on 26/04/22.
//

import Foundation

public class ApiClient {
	private let urlSession: URLSession

	init(urlSession: URLSession = NetworkingServiceLocator.shared.urlSession) {
		self.urlSession = urlSession
	}
}
