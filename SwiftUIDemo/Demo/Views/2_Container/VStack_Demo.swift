import SwiftUI

struct VStack_Demo: View{
    var body: some View {
        VStack(alignment: .leading ,
               spacing: 8 ) {
            Text("Movies of the Year")
                .font(.headline)
            Text("Top picks from our collection")
                .font(.subheadline)
            Image(systemName: "pencil")
                .foregroundStyle(.primary)
            Image(systemName: "pencil")
                .foregroundStyle(.primary)
            Image(systemName: "star")
                .foregroundStyle(.primary)
            
            
        }
        HStack {
            Image(systemName: "pencil")
                .foregroundStyle(.primary)
                
            Text("Favoritessssss")
                .fontWeight(.bold)
                .font(.largeTitle)
                .foregroundStyle(Color.purple)
            Circle()
                .frame(width: 50, height: 50)
                .foregroundColor(Color.green)
        }
        List {
            Text("SwiftUI Fundamentals")
            Text("Thinking in SwiftUI")
            Text("SwiftUI Cookbook")
            Text("Maste**ring** [SwiftUI](http://google.com)")
            Text("SwiftUI for Masterminds")
                .bold()
        }
        HStack(spacing:50){
            Image(systemName: "person.circle.fill")
                .foregroundStyle(.gray)
            Image(systemName: "note.text.badge.plus")
                .foregroundStyle(.gray)
            Image(systemName: "camera.badge.clock.fill")
                .foregroundStyle(.gray)
            Image(systemName: "video.circle.fill")
                .foregroundStyle(.gray)
            Image(systemName: "paperplane.fill")
                .foregroundStyle(.gray)
        }
    }
}

#Preview {
    VStack_Demo()
}
