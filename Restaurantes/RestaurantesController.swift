//
//  RestaurantesController.swift
//  Restaurantes
//
//  Created by Alumno on 9/25/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation
import UIKit

class RestaurantesController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    var restaurantes: [Restaurante] = []
    
    @IBOutlet weak var tvRestaurantes: UITableView!
    
    
    override func viewDidLoad() {
        
        restaurantes.append(Restaurante(nombre: "Pollo Lopez", direccion: "Lopez Mateos #6", telefono: 6225894120, descripcion: "Restaurante de pollo asado"))
        restaurantes.append(Restaurante(nombre: "Mochomos", direccion: "Paco s/n", telefono: 6879123054, descripcion: "Carne en su jugo y variedad"))
        restaurantes.append(Restaurante(nombre: "Chilangos", direccion: "Ave. Rony y mayo", telefono: 5558971230, descripcion: "Cocina express"))
        
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaRestaurante")
        
        celda?.textLabel?.text = restaurantes[indexPath.row].nombre
        
        return celda!
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToDetalleRestaurante" {
            
            let destino = segue.destination as? DetallesRestauranteController
            destino?.restaurante = restaurantes[tvRestaurantes.indexPathForSelectedRow!.row]
            
            
        }
        
    }
    
}
