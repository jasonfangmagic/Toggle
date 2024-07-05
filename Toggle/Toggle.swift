//
//  Toggle.swift
//  Toggle
//
//  Created by Jason Fang on 7/5/24.
//

import SwiftUI

struct MyView: View {
    @State var isDarlMode:Bool = false
    var body: some View {
        Toggle("", isOn: $isDarlMode)
            .toggleStyle(CustomToggleStyle())
            //.padding(.vertical, 5)
    }
}

#Preview {
    MyView()
}
