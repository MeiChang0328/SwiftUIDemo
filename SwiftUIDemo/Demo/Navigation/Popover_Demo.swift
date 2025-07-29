import SwiftUI

struct Popover_Demo: View {
    @State private var isShowing = false
    @State private var showing = false

    var body: some View {
        /// Refer to the examples in ``VStack_Demo``
        VStack {
            Button {
                isShowing = true
            } label: {
                Text("Show Popover")
            }
            Button {
                showing = true
            } label: {
                Text("Show fullscreen")
            }
        }
        .popover(
            isPresented: $isShowing,
            attachmentAnchor: .point(.bottom),
            arrowEdge: .top
        ) {
            Text("Detail")
                .padding()
                .presentationCompactAdaptation(.popover)
        }
        .fullScreenCover(
            isPresented: $showing
        ) {
            Text("Detail")
                .padding()
            
        }
    }
}

#Preview {
    Popover_Demo()
}
