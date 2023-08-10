//
//  OSLog+Delta.swift
//  Delta
//
//  Created by Riley Testut on 8/10/23.
//  Copyright © 2023 Riley Testut. All rights reserved.
//

import OSLog

extension OSLog.Category
{
    static let database = "Database"
}

extension Logger
{
    static let deltaSubsystem = "com.rileytestut.Delta"
    
    static let database = Logger(subsystem: deltaSubsystem, category: OSLog.Category.database)
}

@available(iOS 15, *)
extension OSLogEntryLog.Level
{
    var localizedName: String {
        switch self
        {
        case .undefined: NSLocalizedString("Undefined", comment: "")
        case .debug: NSLocalizedString("Debug", comment: "")
        case .info: NSLocalizedString("Info", comment: "")
        case .notice: NSLocalizedString("Notice", comment: "")
        case .error: NSLocalizedString("Error", comment: "")
        case .fault: NSLocalizedString("Fault", comment: "")
        @unknown default: NSLocalizedString("Unknown", comment: "")
        }
    }
}
