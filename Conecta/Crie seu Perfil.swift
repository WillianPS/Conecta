//
//  Crie seu Perfil.swift
//  Conecta
//
//  Created by Willian Pereira da Silva on 07/12/17.
//  Copyright © 2017 Willian Pereira da Silva. All rights reserved.
//

import UIKit

class Crie_seu_Perfil: UIViewController {
    
    
    struct perfil {
        var nome:String
        var universidade:String
        var curso:String
        var habilidades:String
     }

    @IBOutlet weak var FotoPerfil: UIImageView!
    
   
        
   
    
    @IBOutlet weak var NomePerfil: UILabel!
    
    @IBOutlet weak var CampoNome: UITextField!
    
    
    @IBOutlet weak var UniversidadePerfil: UILabel!
    
    @IBOutlet weak var CampoUniversidade: UITextField!
    
    
    
    @IBOutlet weak var CursoPerfil: UILabel!
    
    @IBOutlet weak var CampoCurso: UITextField!
    
    
    
    @IBOutlet weak var HabilidadesPerfil: UILabel!
    
    @IBOutlet weak var CampoHabilidades: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
