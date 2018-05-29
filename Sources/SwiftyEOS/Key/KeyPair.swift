//
//  Key.swift
//  SwiftyEOS
//
//  Created by croath on 2018/5/8.
//  Copyright © 2018 ProChain. All rights reserved.
//

import Foundation

func generateRandomKeyPair(enclave: SecureEnclave) -> (privateKey: PrivateKey?, publicKey: PublicKey?, error: Error?) {
    let privateKey = PrivateKey.randomPrivateKey()
    let publicKey = PublicKey(privateKey: privateKey!)
    
    return (privateKey, publicKey, nil)
}
