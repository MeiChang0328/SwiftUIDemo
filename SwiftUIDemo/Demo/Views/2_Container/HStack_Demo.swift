import SwiftUI

struct HStack_Demo: View {
    var body: some View {
       
    
        HStack(alignment: .bottom, spacing: 200) {
            Image(systemName: "pencil")
                .foregroundStyle(.primary)
                
            Text("Favoritesssssssssssss")
                .fontWeight(.bold)
                .font(.largeTitle)
                .foregroundStyle(Color.purple)
        }
    }
}

#Preview {
    HStack_Demo()
}
