//
//  bbdd.swift
//  Gestor_de_Tareas
//
//  Created by Lluís Espert Cuquerella on 10/9/24.
//

import Foundation
import SwiftData

@Model

class Tareas {
    
   // @Attribute(.unique) var id: UUID
    
    var id = UUID()
    
    var nombre: String
    
    var tipo_tarea: String
    
    var contenido_de_tarea: String
    
    var prioridad_tarea: String
    
    init(id: UUID, nombre: String, tipo_tarea: String, contenido_de_tarea: String, prioridad_tarea: String) {
        self.id = id
        self.nombre = nombre
        self.tipo_tarea = tipo_tarea
        self.contenido_de_tarea = contenido_de_tarea
        self.prioridad_tarea = prioridad_tarea
    }
    
}
