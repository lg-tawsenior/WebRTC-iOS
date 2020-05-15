//
//  Config.swift
//  WebRTC-Demo
//
//  Created by Stasel on 30/01/2019.
//  Copyright © 2019 Stasel. All rights reserved.
//

import Foundation

// Set this to the machine's address which runs the signaling server
fileprivate let defaultSignalingServerUrl = URL(string: "ws://192.168.4.99:8080")!

// We use Google's public stun servers. For production apps you should deploy your own stun/turn servers.
let turn_server_username = "ninefingers"
let turn_server_password = "youhavetoberealistic"

//fileprivate let defaultIceServers = ["turn:34.201.20.59:3478",
//                                        "credential:turn_server_password",
//                                        "username:turn_server_username"]


fileprivate let defaultIceServers = ["stun:stun.l.google.com:19302",
                                     "stun:stun1.l.google.com:19302",
                                     "stun:stun2.l.google.com:19302",
                                     "stun:stun3.l.google.com:19302",
                                     "stun:stun4.l.google.com:19302"]

struct Config {
    let signalingServerUrl: URL
    let webRTCIceServers: [String]
    
    static let `default` = Config(signalingServerUrl: defaultSignalingServerUrl, webRTCIceServers: defaultIceServers)
}
