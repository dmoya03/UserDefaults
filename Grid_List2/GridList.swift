//
//  GridList.swift
//  Grid_List2
//
//  Created by Daniel Moya on 8/12/23.
//

import SwiftUI

struct GridList: View {
    
    //let gridItem: [GridItem] = Array(repeating: .init(.flexible(maximum: 80)), count: 2)
    
    @ObservedObject var grid = ModeloColumnas()
    
    var body: some View {
        NavigationView{
            //Gridview horizontal:
            ScrollView(){
                LazyVGrid(columns: grid.gridItem, spacing: 30){
                    ForEach(lista){ item in
                        Text(item.emoji).font(.system(size: 80))
                    }
                }
            }.navigationBarTitle("Grids")
                .toolbar{
                    ToolbarItem{
                        Menu("Opciones"){
                            Section{
                                Button("1 columna"){
                                    grid.columnas(num: 1)
                                }
                                Button("2 columna"){
                                    grid.columnas(num: 2)
                                }
                                Button("3 columna"){
                                    grid.columnas(num: 3)
                                }
                                Button("4 columna"){
                                    grid.columnas(num: 4)
                                }
                                Button("Destruir UD"){
                                    UserDefaults.standard.removeObject(forKey: "numero")
                                }
                            }
                        }
                    }
                }
        }
    }
}

#Preview {
    GridList()
}
