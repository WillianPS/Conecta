//
//  SegundaViewController.swift
//  ConectaOnboarding
//
//  Created by Marina de Lira Pessoa Mota on 07/12/17.
//  Copyright © 2017 Marina de Lira Pessoa Mota. All rights reserved.
//

import UIKit

class SegundaViewController: UIViewController {
    
    
    @IBOutlet weak var segundaImagem: UIImageView!
    @IBOutlet weak var segundoTexto: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.segundoTexto.text = "Desenvolvam suas habilidades fazendo projetos do teu interesse"
        
        
        self.segundaImagem.image = UIImage(named:"icone2")

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
