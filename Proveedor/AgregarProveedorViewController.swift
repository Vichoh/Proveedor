//
//  AgregarProveedorViewController.swift
//  
//
//  Created by Adrian Herrera on 24-10-17.
//

import Foundation
import UIKit

class AgregarProveedorViewController: UIViewController {
    
    @IBOutlet weak var nombreProveedorField: UITextField!
    @IBOutlet weak var direccionProveedorField: UITextField!
    @IBOutlet weak var webProveedorField: UITextField!
    
    @IBOutlet weak var guardarProveedorButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super .viewDidLoad()
    }
    
    
    @IBAction func agregarProveedor(_ sender: Any) {
        
        let proveedor = Proveedor(nombre: (nombreProveedorField.text)!, direccion: (direccionProveedorField.text)!, web: (webProveedorField.text)!)
        
        let proveedorService = ProveedorService()
        proveedorService.agregarProveedor(proveedor: proveedor)
    }
}
