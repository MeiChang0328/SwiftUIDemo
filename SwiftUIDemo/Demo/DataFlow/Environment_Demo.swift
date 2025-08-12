import SwiftUI

extension EnvironmentValues {
    @Entry var count = 0
}

private struct InternalView: View {
    @Environment(\.count) private var count

    var body: some View {
        Text("Environment: \(count)")
    }
}

struct Environment_Demo: View {
    var body: some View {
        InternalView()
            .environment(\.count, 200)
    }
}

#Preview {
    Environment_Demo()
}
