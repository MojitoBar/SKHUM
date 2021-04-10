//
//  ProgramCardViewModel.swift
//  SKHUM
//
//  Created by judongseok on 2021/04/10.
//
import SwiftUI

class ProgramCardViewModel: ObservableObject{
    init() {
        fetchPrograms()
    }
    
    let url = "http://localhost:8080/user/all"
    
    @Published var Programs: [Program] = []
    
    func fetchPrograms(){
        guard let url = URL(string: url) else { return }
        URLSession.shared.dataTask(with: url) { (data, resp, err) in
            DispatchQueue.main.async {
                self.Programs = try! JSONDecoder().decode([Program].self, from: data!)
            }
        }.resume()
    }
    
    func getPrograms() -> [Program] {
        return Programs
    }
}
