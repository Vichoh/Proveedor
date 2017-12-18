//
//  ProveedorCell.swift
//  Proveedor
//
//  Created by Adrian Herrera on 23-10-17.
//  Copyright © 2017 Adrian Herrera. All rights reserved.
//

import Foundation
import UIKit

class ProveedorCell: UITableViewCell {
    
    @IBOutlet weak var nombreProveedorLabel: UILabel!
    
    @IBOutlet weak var verProveedorButton: UIButton!
    @IBOutlet weak var eliminarProveedorButton: UIButton!
    @IBOutlet weak var editProveedorButton: UIButton!
    
    
    //sobreescribimos esta funcion para decir que este archivo se esta creando a raiz de un archivo de intefaz
    override func awakeFromNib() {
        super .awakeFromNib();
        nombreProveedorLabel.text = ""
        
    }
    
    // metodos para definir las etiqueta
    
    public func setNombreProveedorLabel (nombreProveedor: String){
        
        self.nombreProveedorLabel.text = nombreProveedor;
    }
    
    public func setCellWithProveedores(proveedor : Proveedor) {
        self.nombreProveedorLabel.text = proveedor.nombre
    }
}
