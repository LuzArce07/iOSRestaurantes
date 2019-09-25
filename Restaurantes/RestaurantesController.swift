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
    
    override func viewDidLoad() {
        
        restaurantes.append(Restaurante(direccion: "String", telefono: <#T##Int#>, descripcion: "<#T##String#>"))
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        <#code#>
    }
    
}
