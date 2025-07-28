import SwiftUI

struct Button_Demo: View {
    var body: some View {
        Button {
            // save book to favorites
        } label: {
            Label("Add to Favorites", systemImage: "star")
                .foregroundStyle(.black)
                .padding()
                .background(.yellow, in: Capsule())
        }
    }
}
struct selfBTN:View {
    @State private var isPressed = false
    var body: some View {
        Button {
            print("BTN tapped:\(isPressed)")
            isPressed.toggle()
            //自動切換true/false
        } label: {
            Text("tap me")
                .font(.title)
                .padding()
                .foregroundStyle(isPressed ? .green : .red)
               
        }
    }
}

#Preview {
    Button_Demo()
}
#Preview{
    selfBTN()
}

