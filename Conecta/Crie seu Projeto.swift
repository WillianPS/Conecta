//
//  Crie seu Projeto.swift
//  Conecta
//
//  Created by Willian Pereira da Silva on 07/12/17.
//  Copyright © 2017 Willian Pereira da Silva. All rights reserved.
//

import UIKit

class Crie_seu_Projeto: UIViewController {
    
    @IBAction func FotoProjeto(_ sender: Any) {
    }
    
    
    
    @IBOutlet weak var SelecionarInteresses: UILabel!
    
    
    
    @IBOutlet weak var CampoNomeProjeto: UITextField!
    
    

    
    @IBOutlet weak var CampoDescricaoProjeto: UITextField!
    
    
    
    
    @IBOutlet weak var CampoHabilidadesDesejadas: UITextField!
    
    
    
   
    @IBOutlet weak var NumeroParticipantes: UITextField!
    
    
    
    @IBOutlet weak var CampoObjetivo: UITextField!
    

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
