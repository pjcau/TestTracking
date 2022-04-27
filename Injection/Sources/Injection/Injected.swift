//
//  File.swift
//  
//
//  Created by feanor on 26/04/22.
//

import Foundation

@propertyWrapper
public struct Injected<T> {
	private let keyPath: WritableKeyPath<InjectedValues, T>
	public var wrappedValue: T {
		get { InjectedValues[keyPath] }
		set { InjectedValues[keyPath] = newValue }
	}

	public init(_ keyPath: WritableKeyPath<InjectedValues, T>) {
		self.keyPath = keyPath
	}
}


@propertyWrapper
public struct LazyInjected<T> {
	private let keyPath: KeyPath<InjectedValues, T>
	public var wrappedValue: T {
		get { InjectedValues[keyPath] }
	}

	public init(_ keyPath: KeyPath<InjectedValues, T>) {
		self.keyPath = keyPath
	}
}

