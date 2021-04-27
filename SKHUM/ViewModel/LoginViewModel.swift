//
//  ProgramCardViewModel.swift
//  SKHUM
//
//  Created by judongseok on 2021/04/10.
//
import SwiftUI

class LoginViewModel: ObservableObject{
    
    func TryLogin(id: String, name: String, completion: @escaping (Error?) -> ()){
        guard let url = URL(string: "http://localhost:8080/user/login") else { return }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "POST"
        
        let params = ["id": id, "password": name]
        do{
            let data = try JSONSerialization.data(withJSONObject: params, options: .init())
            urlRequest.httpBody = data
            urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
            
            URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
                print(String(data: data!, encoding: .utf8)!)
                guard error == nil else {
                    print("Error: error calling GET")
                    print(error!)
                    return
                }
                guard data != nil else {
                    print("Error: Did not receive data")
                    return
                }
                // 로그인에 성공했을 때
                if let response = response as? HTTPURLResponse, (200 ..< 300) ~= response.statusCode{
                    Singleton.sharedInstance.setUser(id: id)
                    Singleton.sharedInstance.setIsLogin(islogin: true)
                } else {
                    print("Error: HTTP request failed")
                    return
                }
                completion(nil)
                print(Singleton.sharedInstance.getIsLogin())
                
            }.resume()
        }
        catch{
            completion(error)
        }
    }
}
