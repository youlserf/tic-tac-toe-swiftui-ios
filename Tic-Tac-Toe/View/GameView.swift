//
//  GameView.swift
//  Tic-Tac-Toe
//
//  Created by youlserf on 11/01/23.
//

import SwiftUI

struct GameView: View {
    
    @StateObject private var viewModel = GameViewModel()
    @State var showingModal:Bool = false
    
    var body: some View {
        GeometryReader { geometry in
            VStack{
                
                !showingModal ?
                HStack {
                    Spacer()
                     Button("Seleccionar nivel de dificultad") {
                        showingModal.toggle()
                    }
                     .padding()
                     .background(.blue)
                     .foregroundColor(.white)
                     .cornerRadius(15)
                    
                    Spacer()
                }.frame(height: 80) : nil
                
                showingModal ? ModalView(selectedMode: self.$viewModel.selectedMode, showingModal: $showingModal): nil
                
                Spacer()
                LazyVGrid(columns: viewModel.columns, spacing: 5) {
                    ForEach(0..<9) {
                        i in
                        ZStack{
                            GameSquareView(proxy: geometry)
                            PlayerIndicatorView(systemImageName: viewModel.moves[i]?.indicator ?? "")
                            
                        }
                        .onTapGesture {
                            viewModel.processPlayerMove(for: i)
                        }
                    }
                }
                Spacer()
            }
            
        }
        .disabled(viewModel.isGameboardDisabled)
        .padding()
        .alert(item: $viewModel.alertItem, content: { alertItem in Alert(title: alertItem.title,
                 message: alertItem.message,
                 dismissButton: .default(alertItem.buttonTitle,
                                         action: {viewModel.resetGame()}))
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
