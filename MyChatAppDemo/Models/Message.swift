//
//  Message.swift
//  MyChatAppDemo
//
//  Created by Dmytro Popelnukh on 2023-03-02.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var received: Bool
    var timestamp: Date
}
