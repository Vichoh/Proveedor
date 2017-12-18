//
//  ListaProveedoresViewControllre.swift
//  Proveedor
//
//  Created by Adrian Herrera on 23-10-17.
//  Copyright © 2017 Adrian Herrera. All rights reserved.
//

import Foundation
import UIKit

class ListaProveedoresViewController: UITableViewController{
    
    @IBOutlet var proveedorTable: UITableView!
    var proveedores = [Proveedor]()
    var id_proveedor : Int = 0;
    
    
    override func viewDidLoad() {
        //viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(obtenerProveedores(notification:)), name: Notification.Name(rawValue: "datosProveedor"), object: nil)
        
        let proveedorService = ProveedorService()
        proveedorService.listar()
        
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return proveedores.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let newCell = tableView.dequeueReusableCell(withIdentifier: "newProveedor" ) as! ProveedorCell
        newCell.setCellWithProveedores(proveedor: proveedores[indexPath.row])
     
        return newCell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "id_proveedor", sender: self )
        
        self.id_proveedor = self.proveedores[indexPath.count-1].id;
    }
    
 
    
    
    @objc func obtenerProveedores(notification:Notification){
        proveedores = notification.userInfo?["proveedores"] as! Array<Proveedor>
        
        tableView.reloadData()
        }
        
        
    }
    
   

