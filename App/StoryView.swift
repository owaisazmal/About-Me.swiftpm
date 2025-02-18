import SwiftUI

struct StoryView: View {
    @State private var colorIndex = 0
    let colorSets: [[Color]] = [
        [.red, .white, .blue, .purple], // Palette 1 - Base palette
        [.white, .blue, .purple, .red], // Palette 2 - Shifted
        [.blue, .purple, .red, .white], // Palette 3 - Shifted
        [.purple, .red, .white, .blue], // Palette 4 - Shifted

        // Example of blending opacities for smoother transitions - Customize these!
        [.red.opacity(0.8), .white.opacity(0.2), .blue.opacity(0.0), .purple.opacity(0.0)],
        [.red.opacity(0.5), .white.opacity(0.5), .blue.opacity(0.2), .purple.opacity(0.0)],
        [.red.opacity(0.2), .white.opacity(0.8), .blue.opacity(0.5), .purple.opacity(0.1)],
        [.red.opacity(0.0), .white.opacity(0.5), .blue.opacity(0.8), .purple.opacity(0.3)],
        [.red.opacity(0.0), .white.opacity(0.2), .blue.opacity(0.5), .purple.opacity(0.8)],
        [.red.opacity(0.1), .white.opacity(0.0), .blue.opacity(0.2), .purple.opacity(0.9)],
        [.red.opacity(0.3), .white.opacity(0.0), .blue.opacity(0.0), .purple.opacity(0.7)],
        [.red.opacity(0.6), .white.opacity(0.1), .blue.opacity(0.0), .purple.opacity(0.3)],


        // Can Add more palettes as needed to create your desired blend
    ]

    let timer = Timer.publish(every: 4, on: .main, in: .common).autoconnect() // Adjust timer for speed

    var body: some View {
        ZStack {
            LinearGradient(colors: colorSets[colorIndex % colorSets.count], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()

            VStack {
                Text("My Story")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                    .foregroundColor(.primary)

                ScrollView {
                    Text(information.story)
                        .font(.body)
                        .padding()
                        .foregroundColor(.primary)
                }
            }
            .padding([.top, .bottom], 50)
        }
        .onReceive(timer) { _ in
            withAnimation(.easeInOut(duration: 3)) {
                colorIndex += 1
            }
        }
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}

struct StoryInformation {
    var story = "This is a placeholder story. You should replace this with your actual story content.  The background color is animated to create a color blending effect using red, white, blue, and purple colors. This example cycles through different palettes of these four colors to create a blending visual. You can customize the color palettes, animation duration, and animation type to achieve various blending effects. Remember to replace the placeholder story with your real content to make this view functional."
}

