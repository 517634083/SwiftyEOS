//
//  Error.swift
//  SwiftyEOS
//
//  Created by croath on 2018/7/13.
//  Copyright © 2018 ProChain. All rights reserved.
//

import Foundation

struct RPCErrorDetail: Codable {
    var message: String
    var file: String
    var lineNumber: Int
    var method: String
}

struct RPCError: Codable {
    var code: Int
    var name: String
    var what: String
    var details: [RPCErrorDetail]
}

struct RPCErrorResponse: Error, Codable {
    var code: Int
    var message: String
    var error: RPCError
    
    func errorDescription() -> String {
        return "\nerror:\n  name:       \(error.name)\n  what:       \(error.what)\n  details[0]: \(String(describing: error.details.first!.message))"
    }
}
