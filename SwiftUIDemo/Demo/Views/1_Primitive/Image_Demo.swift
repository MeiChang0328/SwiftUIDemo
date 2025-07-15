import SwiftUI

struct Image_Demo: View {
    @State private var color: Color = .blue

    var body: some View {
        HStack(spacing: 30) {
            Image(systemName: "bookmark")

            Image(systemName: "bookmark")
                .symbolVariant(.fill)
            Image(systemName: "bookmark")
                .symbolVariant(.circle)
            Image(systemName: "bookmark")
                .symbolVariant(.square)
            Image(systemName: "bookmark")
                .symbolVariant(.rectangle)
            Image(systemName: "bookmark")
                .symbolVariant(.slash)
            
            
        }
        VStack(spacing: 30) {
            Image(systemName: "bookmark")

            Image(systemName: "bookmark")
                .symbolVariant(.fill)
            Image(systemName: "bookmark")
                .symbolVariant(.circle)
            Image(systemName: "bookmark")
                .symbolVariant(.square)
            Image(systemName: "bookmark")
                .symbolVariant(.rectangle)
            Image(systemName: "bookmark")
                .symbolVariant(.slash)
            
            
            
            
        }
        
        HStack(spacing: 30) {
            Image(systemName: "pencil")
                .symbolVariant(.slash)
            Image(systemName: "pencil")
                .symbolVariant(.slash)
            Image(systemName: "pencil")
                .symbolVariant(.slash)
            Image(systemName: "pencil")
                .symbolVariant(.slash)
            Image(systemName: "pencil")
                .symbolVariant(.slash)
            Image(systemName: "pencil")
                .symbolVariant(.slash)
            
        }
    }
}

#Preview("SF Symbols") {
    Image_Demo()
}

#Preview("Custom Image") {
    Image("pencake")
        .resizable()
        .scaledToFit()
}
