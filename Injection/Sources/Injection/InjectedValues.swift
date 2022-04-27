//
//  File.swift
//  
//
//  Created by feanor on 26/04/22.
//

import Foundation

public struct InjectedValues {

	/// This is only used as an accessor to the computed properties within extensions of `InjectedValues`.
	private static var current = InjectedValues()

	/// A static subscript for updating the `currentValue` of `InjectionKey` instances.
	public static subscript<K>(key: K.Type) -> K.Value where K : InjectionKey {
		get { key.currentValue }
		set { key.currentValue = newValue }
	}

	/// A static subscript accessor for updating and references dependencies directly.
	public static subscript<T>(_ keyPath: WritableKeyPath<InjectedValues, T>) -> T {
		get { current[keyPath: keyPath] }
		set { current[keyPath: keyPath] = newValue }
	}

	public static subscript<T>(_ keyPath: KeyPath<InjectedValues, T>) -> T {
		get { current[keyPath: keyPath] }
	}

	public static subscript<K>(key: K.Type) -> K.Value where K: LazyInjectionKey {
		get { key.build() }
	}
}
