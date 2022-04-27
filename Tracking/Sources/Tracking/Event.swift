//
//  File.swift
//  
//
//  Created by CAU Jonny on 27/04/22.
//

import Foundation

public enum Event: CaseIterable{
    
    // Here is the list of events that you
    // want to track
    case startUp
    case loginWithEmail
    case loginWithApple
    case loginWithGoogle

    // `name` is the name which you want to register events
    // in the analytics dashboards
    public var name: String {
        switch self {
            
        case .startUp        : return "startUp"
        case .loginWithGoogle       : return "Login with Google"
        case .loginWithEmail     : return "Login with email"
        case .loginWithApple     : return "UpdaLoginte with Apple"
            
        }
    }
    
    public var paramenters: [String : Any]? {
        switch self {
            
        case .startUp        : return ["startUp":"Ola"]
        case .loginWithGoogle       : return ["loginWithGoogle":"Ola"]
        case .loginWithEmail     : return ["loginWithEmail":"Ola"]
        case .loginWithApple     : return ["loginWithApple":"Ola"]
            
        }
    }
    
}
