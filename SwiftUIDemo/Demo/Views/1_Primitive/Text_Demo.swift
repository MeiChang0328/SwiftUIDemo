import SwiftUI

struct Text_Demo: View {
    var body: some View {
        Text("Hello, World!")
            .padding()
            .background { Color.accentColor }
    }
}

#Preview("Default") {
    Text_Demo()
}

#Preview("Font") {
    Text("Learn SwiftUI")
        .font(.largeTitle)
        .fontDesign(.serif)
        .border(.brown)
}

#Preview("Markdown") {
    Text("**Visit Apple** [website](https://www.apple.com)")
}

#Preview("Interpolation") {
    Text("""
    Showtimes: \(Text("Friday").bold()) \
    and \(Text("Saturday").bold()) \
    \(Image(systemName: "sun.min.fill"))
    """)
}

#Preview("Plurals") {
    let count = 3
    Text("Sold ^[\(count) tickets](inflect: true)")
}

#Preview("Format Styles") {
    VStack(spacing: 16) {
        let genres = ["action", "comedy", "literature", "music"]
        Text("Genres: \(genres, format: .list(type: .and))")

        let distance = Measurement(
            value: 25.4, unit: UnitLength.meters
        )
        Text("Distance: \(distance, format: .measurement(width: .wide))")

        let price = 9.99
        Text("""
        Price: \(price, format: .currency(code: "TWD"))
        """)

        Text("""
        Only \(
            Text("25")
                .foregroundStyle(
                    .linearGradient(
                        colors: [.red, .orange],
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                )
        ) minutes left!
        """)
    }
}
