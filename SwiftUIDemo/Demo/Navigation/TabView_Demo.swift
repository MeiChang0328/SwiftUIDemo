import SwiftUI

struct TabView_Demo: View {
    var body: some View {
        TabView {
//            Tab("Map", systemImage: "map") {
//                Text("Map")
//            }
//            Tab("Featured", systemImage: "star") {
//                Text("Featured")
//            }
//            Tab("Profile", systemImage: "person") {
//                Text("Profile")
//            }
        }
    }
}

#Preview("TabView") {
    TabView_Demo()
}

struct TabView_Demo2: View {
    @State private var selectedTab: Int = 1

    var body: some View {
        TabView(selection: $selectedTab) {
            Tab("Map", systemImage: "map", value: 0) {
                Text("Map")
            }
            Tab("Featured", systemImage: "star", value: 1) {
                Text("Featured")
            }
            Tab("Profile", systemImage: "person", value: 2) {
                Text("Profile")
            }
        }
    }
}

#Preview("selectedTab") {
    TabView_Demo2()
}
