//
//  GameSquareView.swift
//  Tic-Tac-Toe
//
//  Created by youlserf on 14/01/23.
//

import SwiftUI

struct GameSquareView: View {
    
    var proxy: GeometryProxy
    
    var body: some View {
        Circle()
            .foregroundColor(.red).opacity(0.5)
            .frame(width: proxy.size.width/3.2, height: proxy.size.height/3.2 - 120)
    }
}
