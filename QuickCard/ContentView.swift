//
//  ContentView.swift
//  QuickCard
//
//  Created by Eduardo David De La Cruz Marrero on 16/8/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("CardBackground"))
                .frame(width: 300, height: 200)
                .cornerRadius(10)
                .shadow(radius: 10)
            VStack(alignment: .leading) {
                Text("Eduardo De La Cruz")
                    .font(.title)
                Text("Hello SwiftUI")
                    .italic()
                Spacer()
                HStack {
                    Image(systemName: "envelope.fill")
                        .foregroundColor(.orange)
                    Text("gualdodelacruz@gmail.com")
                }
                HStack {
                    Image(systemName: "link")
                        .foregroundColor(.orange)
                    Text("gualdodelacruz.com")
                }
                HStack {
                    Image(systemName: "location.fill")
                        .foregroundColor(.orange)
                    Text("La Tahona")
                }
            }
            .padding()
            .foregroundColor(.white)
        }
        .frame(width: 300, height: 200)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
