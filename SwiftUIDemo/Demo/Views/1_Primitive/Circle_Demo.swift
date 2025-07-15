import SwiftUI

struct Circle_Demo: View {
    var body: some View {
        Circle()
            .fill(Color.blue)
        //fill語法特別只能控制一個
    
       
        
        Circle()
            .frame(width: 40, height: 40.0)
//            .fill(Color.blue)
            .foregroundStyle(Color.purple)
          
            

        Circle()
            .stroke(Color.red, lineWidth: 10)
    }
}

#Preview {
    Circle_Demo()
        .padding()
}
