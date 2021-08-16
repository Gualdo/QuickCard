import UIKit
import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    
    @State private var colorValue = ""
    @State private var color = Color.clear
    @State private var showColor = false
    
    var body: some View {
        VStack {
            TextField("Enter Color", text: $colorValue, onCommit: {
                self.color = self.color(text: self.colorValue)
            })
            
            if showColor {
                color
            }
        }
    }
    
    func color(text: String) -> Color {
        switch text.lowercased() {
        case "blue":
            showColor = true
            return Color.blue
        case "yellow":
            showColor = true
            return Color.yellow
        case "red":
            showColor = true
            return Color.red
        default:
            showColor = false
            return Color.white
        }
    }
}

let viewController = UIHostingController(rootView: ContentView())
PlaygroundPage.current.liveView = viewController
