//
//  Restaurante.swift
//  Restaurantes
//
//  Created by Alumno on 9/25/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation

class Restaurante {
    
    var direccion : String?
    var telefono : Int?
    var descripcion : String?
    
    init(direccion: String, telefono: Int, descripcion: String) {
        
        self.direccion = direccion
        self.telefono = telefono
        self.direccion = descripcion
        
    }
    
}
