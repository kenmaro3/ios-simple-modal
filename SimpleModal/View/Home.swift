//
//  Home.swift
//  SimpleModal
//
//  Created by Kentaro Mihara on 2023/08/10.
//

import SwiftUI

struct Home: View {
    @State  var isModal:Bool = false
    var body: some View {
        VStack{
            VStack{
                Button(action: {
                    isModal = true
                }, label: {
                    Text("full modal")
                })
                .padding()
            }
        }.sheet(isPresented: $isModal, content: {
            Text("Modal Page")
                //.presentationDetents([. medium])
        })
    }}

#Preview {
    Home()
}
