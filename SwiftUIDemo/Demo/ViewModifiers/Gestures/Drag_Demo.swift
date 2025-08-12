import SwiftUI

struct Drag_Demo: View {
    @State private var position = CGSize.zero         // Final position (saved)
    @State private var dragOffset = CGSize.zero       // Offset during drag
    @State private var position2 = CGSize.zero         // Final position (saved)
    @State private var dragOffset2 = CGSize.zero
    @State private var position3 = CGSize.zero         // Final position (saved)
    @State private var dragOffset3 = CGSize.zero
    @State private var position4 = CGSize.zero         // Final position (saved)
    @State private var dragOffset4 = CGSize.zero       // Offset during drag

    var body: some View {
        Circle()
            .fill(Color.blue)
            .frame(width: 200, height: 200)
            .offset(x: position.width + dragOffset.width,
                    y: position.height + dragOffset.height)
//            .gesture()要定義某個手勢還沒定義手勢的具體內容
            .gesture(
                DragGesture() //拖動
                    .onChanged { value in
                        dragOffset = value.translation
                        
                    }
                    .onEnded { value in
//                        position.width += value.translation.width
//                        position.height += value.translation.height
                        
                        withAnimation(.linear(duration:2)){
                            dragOffset = .zero
                        }
                    }
            )
            .animation(.spring(), value: position)
        
        Circle()
            .fill(Color.yellow)
            .frame(width: 30,height: 30)
            .cornerRadius(8)
            .offset(x: position2.width + dragOffset2.width,
                    y: position2.height + dragOffset2.height)
            .gesture(
                DragGesture() //拖動
                    .onChanged { value in
                        dragOffset2 = value.translation
                    }
                    .onEnded { value in
                        position2.width += value.translation.width
                        position2.height += value.translation.height
                        dragOffset2 = .zero
                    }
            )
            .animation(.spring(), value: position)
        Circle()
            .fill(Color.yellow)
            .frame(width: 30,height: 30)
            .cornerRadius(8)
            .offset(x: position3.width + dragOffset3.width,
                    y: position3.height + dragOffset3.height)
            .gesture(
                DragGesture() //拖動
                    .onChanged { value in
                        dragOffset3 = value.translation
                    }
                    .onEnded { value in
                        position3.width += value.translation.width
                        position3.height += value.translation.height
                        dragOffset3 = .zero
                    }
            )
            .animation(.spring(), value: position)
        Rectangle()
            .fill(Color.yellow)
            .frame(width: 100,height: 20)
            .cornerRadius(8)
            .offset(x: position4.width + dragOffset4.width,
                    y: position4.height + dragOffset4.height)
            .gesture(
                DragGesture() //拖動
                    .onChanged { value in
                        dragOffset4 = value.translation
                    }
                    .onEnded { value in
                        position4.width += value.translation.width
                        position4.height += value.translation.height
                        dragOffset4 = .zero
                    }
            )
            .animation(.spring(), value: position)
        
        
    }
}

#Preview {
    Drag_Demo()
}
