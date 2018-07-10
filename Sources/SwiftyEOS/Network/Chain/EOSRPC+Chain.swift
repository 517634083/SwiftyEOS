//
//  EOSRPC+Chain.swift
//  SwiftyEOS
//
//  Created by croath on 2018/5/4.
//  Copyright © 2018 ProChain. All rights reserved.
//

import Foundation

extension EOSRPC {
    func chainInfo(completion: @escaping (_ result: ChainInfo?, _ error: Error?) -> ()) {
        let router = ChainRouter(endpoint: .GetInfo())
        internalRequest(router: router, completion: completion)
    }
    
    func getBlock(blockNumOrId: AnyObject, completion: @escaping (_ result: BlockInfo?, _ error: Error?) -> ()) {
        let router = ChainRouter(endpoint: .GetBlock(blockNumberOrId: blockNumOrId))
        internalRequest(router: router, completion: completion)
    }
    
    func abiJsonToBin(abi: AbiJson, completion: @escaping (_ result: AbiBinResult?, _ error: Error?) -> ()) {
        let router = ChainRouter(endpoint: .AbiJsonToBin(abi: abi))
        internalRequest(router: router, completion: completion)
    }
    
    func pushTransaction(transaction: PackedTransaction, completion: @escaping (_ result: PackedTransaction?, _ error: Error?) -> ()) {
        let router = ChainRouter(endpoint: .PushTransaction(transaction: transaction))
        internalRequest(router: router, completion: completion)
    }
}
