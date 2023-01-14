//
//  SwiftUIView.swift
//  Tic-Tac-Toe
//
//  Created by youlserf on 13/01/23.
//

import SwiftUI

struct GrowingButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(.blue)
            .foregroundColor(.white)
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}

struct ModalView: View {
    @Binding var selectedMode: Mode
    @Binding var showingModal:Bool
    
    var body: some View {
        VStack {
            
            Picker("Mode of game", selection: $selectedMode) {
                Text("Easy").tag(Mode.easy)
                Text("Intermediate").tag(Mode.intermediate)
                Text("Hard").tag(Mode.difficult)
            }
            .pickerStyle(SegmentedPickerStyle())
        
            Button("Start") {
                showingModal.toggle()
                print(selectedMode)
            }
            .buttonStyle(GrowingButton())
        }
        .frame(maxHeight: 80)
    }
}
    

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView(selectedMode: .constant(Mode.easy), showingModal: .constant(true));
    }
}

