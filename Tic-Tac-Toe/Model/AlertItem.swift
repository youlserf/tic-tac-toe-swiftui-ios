//
//  AlertItem.swift
//  Tic-Tac-Toe
//
//  Created by youlserf on 14/01/23.
//

import Foundation
import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    var title: Text
    var message: Text
    var buttonTitle: Text
}
