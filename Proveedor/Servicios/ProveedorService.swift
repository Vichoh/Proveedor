//
//  ProveedorService.swift
//  Proveedor
//
//  Created by Adrian Herrera on 23-10-17.
//  Copyright © 2017 Adrian Herrera. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class ProveedorService {
    
    var proveedores = [Proveedor]()
    let apiURL = URL(string: "http://10.0.0.133:8888/laravel/video2/public/api/proveedor")
    
    public func listar() {
        
        
        Alamofire.request(apiURL!, method:.get).responseJSON(completionHandler: {
            
            response in if let dataDownloaded = response.result.value{
                
                let proveedorJson = JSON(dataDownloaded)
                
               
                for prov in proveedorJson.arrayValue {
                    
                    let proveedor = Proveedor(nombre: prov["nombre"].stringValue, direccion: prov["direccion"].stringValue, web: prov["web"].stringValue)
                    
                    self.proveedores.append(proveedor)
                }
                
             
                
                NotificationCenter.default.post(name: Notification.Name(rawValue: "datosProveedor"), object: nil, userInfo: ["proveedores":self.proveedores])
                
            }
        })
    }
    
    
    /* Mejoras
         conversion a json
         manejo de respuesta
         visualizavion retorno en vista */
    
    public func agregarProveedor (proveedor: Proveedor) {
        
        Alamofire.request(apiURL!, method: .post, parameters: ["nombre" : proveedor.nombre, "direccion" : proveedor.direccion, "web" : proveedor.web]).responseJSON(completionHandler: {
            
            response in
            print (response)
        })
    }
}
