import SwiftUI
import Observation

struct Counter: View {
    @Binding var count: Int

    var body: some View {
//        let_ = self._printChanges()
        Text("Counter: \(count)")
        Button("Reset") {
            count = 0
        }
    }
}

struct ModelCounter: View {
    var model: Model

    var body: some View {
        Button("Set to 100") {
            model.count = 100
        }
        
    }
}

struct CounterView: View {
    @State var model = Model()

    var body: some View {
        
        
        Text("Student Name:\(model.name)")
        Button("Increment \(model.count)") {
            model.count += 1
        }

        Divider()

        Counter(count: $model.count)

        Divider()

        ModelCounter(model: model)
        Divider()
        practiceModel(model: model)
            .padding()
            .foregroundStyle(.black)
            .border(.brown)
            .background( // 加漸層背景
                   LinearGradient(
                    colors: [.blue, .purple],
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing
                   )
                   .clipShape(RoundedRectangle(cornerRadius: 12)) // 讓背景有圓角
               )
            .cornerRadius(12)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.black,lineWidth:2)
                )
            .shadow(color: Color.gray.opacity(0.5), radius: 10, x: 5, y: 5)
        Divider()
        
        TextField("your name?", text: $model.name)
            .padding()
            .cornerRadius(12)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.black,lineWidth:2)
            )
            .frame(width: 250)
           
        
      
          

            
           

    }
}


struct practiceModel:View {
    var model:Model
    
    var body: some View {
        Button(
            "My BTN: \(model.count)"
        ){
            model.count-=1
        }
    }
}


@Observable
class Model {
    var count: Int =  0
    var name:String = ""
}

#Preview {
    CounterView()
        .font(.largeTitle)
}
