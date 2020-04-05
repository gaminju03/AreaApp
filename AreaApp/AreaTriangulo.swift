//
//  AreaTriangulo.swift
//  AreaApp
//
//  Created by Juan on 22/02/20.
//  Copyright © 2020 usuario. All rights reserved.
//

import SwiftUI

struct AreaTriangulo: View {
    @State var base = ""
    @State var altura = ""
    var area: Double{
        let medidaBase   = Double(base) ?? 0
        let medidaAltura = Double(altura) ?? 0
        let totalArea =  medidaBase * medidaAltura / 2
        return totalArea
    }
    
    var body: some View {
        Group{
            Image("triangulo")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150.0, height: 180.0, alignment: .center)
            Form{
                Section(header: Text("Datos de Entrada")){
                    Text("Medida de la base")
                    TextField("Base:", text: $base)
                    .keyboardType(.decimalPad)
                    Text("Medida de la altura")
                    TextField("Altura:", text: $altura)
                    .keyboardType(.decimalPad)
                }
                Section(header: Text("Resultado")){
                    Text("Area: \(area, specifier: "%.2f")")
                }
            }.navigationBarTitle(Text("ÁREA DEL TRIANGULO"))
        }
    }
}
