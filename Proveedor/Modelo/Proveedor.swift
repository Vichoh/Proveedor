//
//  Proveedor.swift
//  Proveedor
//
//  Created by Adrian Herrera on 23-10-17.
//  Copyright © 2017 Adrian Herrera. All rights reserved.
//

import Foundation

class Proveedor {
    
    public var nombre : String;
    public var direccion : String;
    public var web : String;
    public var id: Int;
    
    init(nombre: String, direccion: String, web: String) {
        self.nombre = nombre;
        self.direccion = direccion;
        self.web = web;
        self.id = 0;
    }

}
