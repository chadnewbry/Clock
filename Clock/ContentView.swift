//
//  ContentView.swift
//  Clock
//
//  Created by Chad Newbry on 11/14/22.
//

import SwiftUI

struct ContentView: View {
    
    var viewModels: [ClockViewModel]
    
    var body: some View {
        VStack {
            ForEach(viewModels, id: \.self) { vm in
                ClockView(viewModel: vm)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModels: [ClockViewModel(date: Date())])
    }
}
