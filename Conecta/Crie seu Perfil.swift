//
//  Crie seu Perfil.swift
//  Conecta
//
//  Created by Willian Pereira da Silva on 06/12/17.
//  Copyright © 2017 Willian Pereira da Silva. All rights reserved.
//

import UIKit

class Crie_seu_Perfil: UIViewController {
    
    
    @IBOutlet weak var LogoInicio: UIImageView!
    
    @IBOutlet weak var Login: UILabel!
    
    @IBOutlet weak var CampoLogin: UITextField!
    
    @IBOutlet weak var Senha: UILabel!
    
    
    @IBOutlet weak var CampoSenha: UITextField!
    
    
    @IBAction func LoginEmail(_ sender: UIButton) {
    }
    
    @IBAction func LoginFacebook(_ sender: Any) {
    }
    
    
    @IBAction func BotaoCadastro(_ sender: Any) {
    }
    
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
