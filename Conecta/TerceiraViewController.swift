//
//  TerceiraViewController.swift
//  ConectaOnboarding
//
//  Created by Marina de Lira Pessoa Mota on 07/12/17.
//  Copyright © 2017 Marina de Lira Pessoa Mota. All rights reserved.
//

import UIKit

class TerceiraViewController: UIViewController {

  
    @IBOutlet weak var terceiraImagem: UIImageView!
    
    @IBOutlet weak var terceiroTexto: UILabel!
    
    @IBOutlet weak var botaoInicio: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.terceiroTexto.text = "Venha! Faça seu projeto acontecer!"
        
        
        self.terceiraImagem.image = UIImage(named:"icone3")
        
        
        
        
        

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
