//
//  File.swift
//  
//
//  Created by feanor on 26/04/22.
//

import Foundation

public protocol InjectionKey {

	/// The associated type representing the type of the dependency injection key's value.
	associatedtype Value

	/// The default value for the dependency injection key.
	static var currentValue: Self.Value { get set }
}

public protocol LazyInjectionKey {
	associatedtype Value

	static func build() -> Self.Value
}
