//
//  Gestor_de_TareasApp.swift
//  Gestor_de_Tareas
//
//  Created by Lluís Espert Cuquerella on 10/9/24.
//

import SwiftUI
import SwiftData

@main
struct Gestor_de_TareasApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.modelContainer(for: Tareas.self)
    }
}
