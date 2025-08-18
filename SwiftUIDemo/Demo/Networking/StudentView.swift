//
//  StudentView.swift
//  SwiftUIDemo
//
//  Created by 張郁眉 on 2025/8/18.
//

import SwiftUI

struct StudentView: View {
    @State var students:[Student]=[]
    var body: some View {
        List(students) {
            Text("Name:\($0.name)")
        }.task {
            await loadStudents()
        }
    }
    //1.先寫func
    func loadStudents() async{
        //2.得到網址
        do{
            let baseURL = "https://learnify-api.zeabur.app"
            guard let url = URL(string: "\(baseURL)/api/auto/students") else {
                return
            }
            //2-2.URLSession get student from server
            let (data,response) = try await
            URLSession.shared.data(from: url)
            
            //2-3.decode json
            let jsonResponse = try JSONDecoder().decode(JSONResponse.self, from: data)
            
            //2-4.display UI
            self.students = jsonResponse.data.students
            
        //接到錯誤
        } catch {
            print("Error\(error.localizedDescription)")
        }
    }
}
struct JSONResponse:Codable{
    var success: Bool
    var data:JSONData
    
}

struct JSONData:Codable{
    var students:[Student]
}

struct Student:Codable , Identifiable{
    var id: String
    var full_name:String
    var name:String{
        full_name
    }
}

#Preview {
    StudentView()
}
