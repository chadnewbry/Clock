//
//  ContentView.swift
//  Clock
//
//  Created by Chad Newbry on 11/14/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel: ClockViewModel
    
    
    var body: some View {
        VStack {
            
            ForEach(viewModel.times, id: \.self) { time in
                Text(time)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModels: ClockViewModel(offsets: [0, 5, 10, 15, 16]))
    }
}
