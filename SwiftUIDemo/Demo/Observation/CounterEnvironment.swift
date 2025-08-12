import SwiftUI
import Observation

@Observable
class CounterModel {
    var text: String = "Hello, World!"
    var count: Int = 0
    var check: Bool = false
}

struct BindableCounter: View {
    @Bindable var model: CounterModel

    var body: some View {
        TextField("", text: $model.text)
            .padding()
        
    }
}

struct CounterEnvironment: View {
    @Environment(CounterModel.self) private var model

    var body: some View {
        @Bindable var model = model
       
        TextField("", text: $model.text)
            .padding()

        Text("Counter: \(model.count)")

        Button("Increment") {
            model.count += 1
        }
        
        Button("確認", systemImage: "checkmark.circle")
        {
            model.check.toggle()
        }
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 5)
                .stroke(model.check ? Color.black : Color.green,lineWidth: 2)
        )
    }
}

#Preview {
   
    CounterEnvironment()
        .font(.largeTitle)
        .environment(CounterModel())
}

//
//@State          →  單一 View 本地狀態（短期、簡單）
//@Binding        →  引用別人的狀態（雙向綁定）
//@Observable     →  宣告可觀察物件（多 View 可共用）
//@Bindable       →  在 View 內雙向綁定 Observable 屬性
//@Environment    →  從外部環境取得共享物件

