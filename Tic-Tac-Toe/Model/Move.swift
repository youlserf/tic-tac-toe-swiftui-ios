//
//  Move.swift
//  Tic-Tac-Toe
//
//  Created by youlserf on 14/01/23.
//

import Foundation

struct Move {
    let player: Player
    let boardIndex: Int
    
    var indicator: String {
        return player == .human ? "xmark" : "circle"
    }
}
