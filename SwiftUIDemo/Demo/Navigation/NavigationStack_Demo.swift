import SwiftUI
//如何增加選項
struct NavigationStack_Demo: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink(value: "Detail") {
                    Text("Show Detail1")
                }
                NavigationLink(value: "Detail2") {
                    Text("Show Detail2")
                }
                NavigationLink(value: "Detail3") {
                    Text("Show Detail3")
                }
            }
            .navigationTitle("Actions")
            .navigationDestination(for: String.self) {value in
                if value == "Detail" {
                    Text("Detail View1")
                } else if value == "Detail2" {
                    Text("Detail View2")
                } else if value == "Detail3" {
                    Text("Page3")
                }
            }
        }
    }
}
//使用switch語法修改
struct NavigationStack_Demo3: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink(value: 1) {
                    Text("Show Detail1")
                }
                NavigationLink(value:2) {
                    Text("Show Detail2")
                }
                NavigationLink(value:3) {
                    Text("Show Detail3")
                }
            }
            .navigationTitle("Actions")
            .navigationDestination(for: Int.self) {value in
                switch value{
                case 1:
                    Text("page1")
                case 2...5:
                    Text("page1")
                default:
                    EmptyView()
                }
                
            }
        }
    }
}

#Preview("Navigation") {
    NavigationStack_Demo()
}
#Preview("Navigation2") {
    NavigationStack_Demo3()
}

/// Navigation Path
struct NavigationStack_Demo2: View {
    @State private var path: [String] = []

    var body: some View {
        NavigationStack(path: $path) {
            List {
                NavigationLink(value: "Detail") {
                    Text("Show Detail")
                }
            }
            .navigationTitle("Actions")
            .navigationDestination(for: String.self) { value in
                VStack {
                    Text("Detail View")

                    Button("Push") {
                        path.append("Detail")
                    }

                    if path.count >= 3 {
                        Button("Pop to root") {
                            path = []
                        }
                    }
                }
            }
        }
    }
}

struct NavigationStack_Demo4: View {
    @State private var path: [String] = []

    var body: some View {
        NavigationStack(path: $path) {
            List {
                NavigationLink(value: "Detail") {
                    Text("Show Detail")
                }
            }
            .navigationTitle("Actions")
            .navigationDestination(for: String.self) { value in
                VStack {
                    Text("Detail View")

                    Button("Push") {
                        path.append("1")
                    }

                    if path.count >= 5 {
                        Button("Pop to root") {
                            path = []
                        }
                    }
                }
            }
        }
    }
}

#Preview("NavigationPath") {
    NavigationStack_Demo2()
}
#Preview("NavigationPath") {
    NavigationStack_Demo4()
}
