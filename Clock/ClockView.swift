//
//  ClockView.swift
//  Clock
//
//  Created by Chad Newbry on 11/14/22.
//

import SwiftUI

struct ClockView: View {
    
    @StateObject var viewModel: ClockViewModel
    
    var body: some View {
        return EmptyView()
    }
}

struct ClockView_Previews: PreviewProvider {
    static var previews: some View {
        ClockView(viewModel: ClockViewModel(date: Date()))
    }
}
