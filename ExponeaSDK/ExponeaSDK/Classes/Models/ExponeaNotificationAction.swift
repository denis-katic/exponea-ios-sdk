//
//  ExponeaNotificationAction.swift
//  ExponeaSDK
//
//  Created by Dominik Hadl on 25/11/2018.
//  Copyright © 2018 Exponea. All rights reserved.
//

import Foundation

public enum ExponeaNotificationAction: String, Codable {
    case openApp = "app"
    case browser = "browser"
    case deeplink = "deeplink"
    case none = ""
    
    var identifier: String {
        switch self {
        case .openApp: return "EXPONEA_ACTION_APP"
        case .browser: return "EXPONEA_ACTION_BROWSER"
        case .deeplink: return "EXPONEA_ACTION_DEEPLINK"
        default: return ""
        }
    }
}
