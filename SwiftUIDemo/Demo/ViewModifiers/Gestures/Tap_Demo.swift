import SwiftUI

struct Tap_Demo: View {
    
    @State private var isTapped: Bool = false

    var body: some View {
        let _ = Self._printChanges()
        Image("pencake")
            .resizable()
            .scaledToFit()
            .frame(width: isTapped ? 300 : 200)
            
            .animation(.spring,value: isTapped)
            .onLongPressGesture(perform: {
                isTapped.toggle()
                print(isTapped)
            })
            .opacity(isTapped ? 0.3 : 1.0)
        
//            .onTapGesture {
//                isTapped.toggle()
//            }//單點擊
        
//            .onTapGesture(count:2) {
//                isTapped.toggle()
//            }
//            雙擊

        
//            .onTapGesture(count: 1, perform: {
//                isTapped.toggle()
//            })
//            等同於
//            .onTapGesture {
//                isTapped.toggle()
//            }
        
        
//            .onAppear()
//            onAppear語法意義為：view出現時會直接觸發
    }
}

#Preview("Tap to zoom") {
    Tap_Demo()
}

#Preview("Zoomable") {
    Image("pencake")
        .resizable()
        .scaledToFit()
        .rounded()
        .frame(width: 200)
        .zoomable()//command+ctl+J打開這個函式的詳細工作
}
