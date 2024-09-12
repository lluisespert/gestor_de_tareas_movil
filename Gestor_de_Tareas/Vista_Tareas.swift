//
//  Vista_Tareas.swift
//  Gestor_de_Tareas
//
//  Created by Lluís Espert Cuquerella on 10/9/24.
//

import SwiftUI
import SwiftData


struct Vista_Tareas: View {
    
    @Environment (\.modelContext) var context
    
    @Environment (\.dismiss) var dismiss
    
    @State var nombre = ""
    
    @State var tipotarea = ""
    
    @State var contenido = ""
    
    @State var prioridad = ""
    
    var body: some View {
        NavigationStack {
            
            Form {
                
                TextField("Nombre: ", text: $nombre)
                
                TextField("Tipo de Tarea: ", text: $tipotarea)
                
                TextField("Contenido de la tarea: ", text: $contenido)
                
                TextField("Prioridad de la tarea: ", text: $prioridad)
                
                Button("Guardar"){
                    
                    let modelo = Tareas(nombre: nombre, tipo_tarea: tipotarea, contenido_de_tarea: contenido, prioridad_tarea: prioridad)
                    
                    context.insert(modelo)
                   
                    dismiss()
                }
                
            }
            .toolbar{
                
                Button("Cancelar"){
                    
                    dismiss()
                    
                }.foregroundStyle(.red)
                
            }
        }
    }
}

#Preview {
    Vista_Tareas()
}
