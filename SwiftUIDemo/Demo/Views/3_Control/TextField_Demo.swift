import SwiftUI

struct TextField_Demo: View {
    @State private var text = ""

    var body: some View {
        TextField("", text: $text, prompt: Text("預設輸入"))
            .padding()
            .frame(width: 300.0, height: 200.0)
            .border(Color.gray)
    }
}

#Preview {
    TextField_Demo()
}
