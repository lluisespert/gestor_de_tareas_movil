//
//  Pepinos_En_Vinagre.swift
//  Gestor_de_Tareas
//
//  Created by Lluís Espert Cuquerella on 11/9/24.
//

import SwiftUI

struct Pepinos_En_Vinagre: View {
    @Bindable var modelo: Tareas
    var body: some View {
        Text(modelo.nombre)
        Text(modelo.tipo_tarea)
        Text(modelo.contenido_de_tarea)
        Text(modelo.prioridad_tarea)
    }
}
/*
#Preview {
    Pepinos_En_Vinagre()
}
*/
