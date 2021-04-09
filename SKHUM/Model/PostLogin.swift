//
//  PostLogin.swift
//  SKHUM
//
//  Created by judongseok on 2021/04/10.
//

import Foundation

func postLogin(id: String, password: String){
    // URL 객체 정의
    let url = URL(string: "http://localhost:8080/user/login/\(id)/\(password)")
    
    // URL Request 객체를 정의
    var request = URLRequest(url: url!)
    request.httpMethod = "POST"
    
    // HTTP 메시지 헤더
    request.addValue("application/json", forHTTPHeaderField: "Content-Type")
    
    // URLSession 객체를 통해 전송, 응답값 처리
    let task = URLSession.shared.dataTask(with: request){ (data, response, error) in
        guard let data = data, error == nil else {                                                 // check for fundamental networking error
            print("error=\(error!)")
            return
        }
        
        if let httpStatus = response as? HTTPURLResponse, httpStatus.statusCode != 200 {           // check for http errors
            print("statusCode should be 200, but is \(httpStatus.statusCode)")
            print("response = \(response!)")
        }
        
        _ = String(data: data, encoding: .utf8)
        print("responseString = \(response!)")
    }
    task.resume()
}
