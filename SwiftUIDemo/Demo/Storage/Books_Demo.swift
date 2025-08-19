//
//  Books_Demo.swift
//  SwiftUIDemo
//
//  Created by 張郁眉 on 2025/8/19.
//

import SwiftUI
import _SwiftData_SwiftUI

@Model
class SwiftBook{
    var name:String
    
    init(name: String) {
        self.name = name
    }
    
}

struct Books_Demo: View {
    @Query var books:[SwiftBook]
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        NavigationStack{
            List(books){ book in
                Text("Book:\(book.name)")
                
            }
            .navigationTitle("My Books")
            .toolbar{
                ToolbarItem{
                    Button("新增") {
                        addsampleBooks()
                    }
                }
            }
        }
    }
    
    func addsampleBooks(){
        let books :[SwiftBook]=[
            SwiftBook(name: "Swift"),
            SwiftBook(name: "SwiftUI"),
            SwiftBook(name: "UKit"),
        ]
        
        for book in books{
            modelContext.insert(book)
        }
    }
    
}

#Preview {
    Books_Demo()
        .modelContainer(for:SwiftBook.self)
}
