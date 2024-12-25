//
//  AboutPhone.swift
//  todoList
//
//  Created by SID on 25/12/2024.
//

import SwiftUI

struct AboutPhone: View {
    var body: some View {
        CustomNavBar(title: "About Phone screen"){
            ScrollView{
                VStack{
                    ForEach(0..<100){ i in
                        Text("Hello World \(i)")
                    }
                }
            }
        }
    }
}

#Preview {
    AboutPhone()
}
