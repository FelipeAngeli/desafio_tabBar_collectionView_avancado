//
//  AlertController.swift
//  DesafioTabbarAvancado
//
//  Created by Felipe  on 24/02/23.
//

import UIKit

class AlertController: NSObject {
    
    let controller: UIViewController
    
    init(controller:UIViewController){
        self.controller = controller
    }
    
    enum TypeImageSelected {
        case camera
        case library
        case cancel
    }

    func chooseImage(completion: @escaping (_ option: TypeImageSelected) -> Void){

        
        let alertControlller: UIAlertController = UIAlertController(title: "Selecione uma das opções abaixo", message: nil, preferredStyle: .actionSheet)
        
        let camera = UIAlertAction(title: "Camera", style: .default) { action in
            //acao camera
            completion(.camera)
        }
        
        let library = UIAlertAction(title: "Biblioteca", style: .default){action in
            //acao biblioteca
            completion(.library)
        }
        
        let cancel = UIAlertAction(title: "Cancelar", style: .default) { action in
            completion(.cancel)
        }
        
        alertControlller.addAction(camera)
        alertControlller.addAction(library)
        alertControlller.addAction(cancel)
        controller.present(alertControlller, animated: true)
    }
    
    func alertInformation(title: String, message: String){
        let alertControlller: UIAlertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "Ok", style: .default)
        alertControlller.addAction(ok)
        controller.present(alertControlller, animated: true)
        
    }
    
}
