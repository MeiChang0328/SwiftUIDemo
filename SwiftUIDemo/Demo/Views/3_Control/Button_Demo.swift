import SwiftUI

struct Button_Demo: View {
    @State private var isPress = false
    var body: some View {
        Button {
            isPress.toggle()
            print("resule:\(isPress)")
        } label: {
            Label("Add to Favorites", systemImage: "star")
                .padding()
                .background(.yellow, in: Capsule())
                .foregroundStyle(isPress ? .green : .red)
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

