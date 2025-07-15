import SwiftUI

struct ZStack_Demo: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(.yellow)
                
            Image(systemName: "star")
                .foregroundStyle(.black)
            Image(systemName: "pencil")
                .foregroundStyle(.black)
            Image(systemName: "person")
                .foregroundStyle(.red)
                
         
                
        }
    }
}

#Preview {
    ZStack_Demo()
        .frame(width: 100, height: 100)
}
