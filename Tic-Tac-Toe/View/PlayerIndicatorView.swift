//
//  PlayerIndicatorView.swift
//  Tic-Tac-Toe
//
//  Created by youlserf on 14/01/23.
//

import SwiftUI

struct PlayerIndicatorView: View {
    
    var systemImageName: String
    
    var body: some View {
        Image(systemName: systemImageName)
            .resizable()
            .frame(width: 40, height: 40)
            .foregroundColor(.white)
    }
}

