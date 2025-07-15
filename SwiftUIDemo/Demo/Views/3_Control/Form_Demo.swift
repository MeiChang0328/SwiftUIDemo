import SwiftUI

struct Form_Demo: View {
    @State private var preferredTheme: String = ""
    @State private var notificationsEnabled: Bool = false

    var body: some View {
        Form {
            TextField(
                "Preferred appearance",
                text: $preferredTheme
            )
            Toggle(
                "Turn on notifications",
                isOn: $notificationsEnabled
            )
            Button("Save Settings") {
                // save settings
            }
            DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })
            Link(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=URL@*/URL(string: "https://www.apple.com")!/*@END_MENU_TOKEN@*/) {
                /*@START_MENU_TOKEN@*/Text("Link")/*@END_MENU_TOKEN@*/
            }
        }
    }
}

#Preview {
    Form_Demo()
}
