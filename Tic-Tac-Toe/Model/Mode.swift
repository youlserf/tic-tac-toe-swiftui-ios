//
//  Mode.swift
//  Tic-Tac-Toe
//
//  Created by youlserf on 14/01/23.
//

import Foundation

enum Mode: String, CaseIterable, Identifiable {
    case easy, intermediate, difficult
    var id: Self { self }
}
