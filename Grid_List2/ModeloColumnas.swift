//
//  ModeloColumnas.swift
//  Grid_List2
//
//  Created by Daniel Moya on 8/12/23.
//

import Foundation
import Combine
import SwiftUI

class ModeloColumnas: ObservableObject {
    
    @Published var gridItem = [GridItem()]
    
    func columnas (num: Int) -> Void {
        gridItem = Array(repeating: .init(.flexible(maximum: 80)), count: num)
        UserDefaults.standard.set(num, forKey: "numero")
    }
    
    init(){
        if let num = UserDefaults.standard.object(forKey: "numero") as? Int {
            gridItem = Array(repeating: .init(.flexible(maximum: 80)), count: num)
        } else {
            gridItem = Array(repeating: .init(.flexible(maximum: 80)), count: 1)
        }
    }
}
