//
//  mi_primera_pantalla.swift
//  mi_primera_app_swiftui
//
//  Created by alumno on 2/24/25.
//

import SwiftUI

struct MiPrimeraPantalla: View {
    
    var body: some View {
        Spacer()
        
        CampoSencillo()
        CampoSencillo()
        CampoSencillo()
        CampoSencillo()
        CampoSencillo()
        CampoSencillo()
        
        Spacer()
    }
}

struct CampoSencillo: View{
    @State private var texto = ""
    
    var body: some View{
        Text("olita de mar \(texto)")
        
        Spacer()
        
        TextField("Placeholder", text: $texto)
        
        Spacer()
        
        Button(action: {
            texto = ""
        }){
            Image(systemName: "trash.square.fill")
                .imageScale(.large)
                .tint(.teal)
        }
    }
}

#Preview {
    MiPrimeraPantalla()
}
