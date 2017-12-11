//
//  Crie seu Perfil.swift
//  Conecta
//
//  Created by Willian Pereira da Silva on 07/12/17.
//  Copyright © 2017 Willian Pereira da Silva. All rights reserved.
//

import UIKit


struct perfil {
    var nome:String
    var universidade:String
    var curso:String
    var habilidades:String
    var imagemPerfil:String
}

class Crie_seu_Perfil: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var usuario:perfil = perfil(nome: "", universidade: "", curso: "", habilidades: "", imagemPerfil: "")
    
    let imagePicker = UIImagePickerController()

   
    @IBOutlet weak var imagemdePerfil: UIImageView!
    
    //botão do perfil (transparente em cima da imagem)
    @IBAction func CarregarImagemPerfil(_ sender: UIButton) {
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .photoLibrary
        
        present(imagePicker, animated: true, completion: nil)
    }
    
    
    //função para guardar a imagem escolhida pelo usuário
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            imagemdePerfil.contentMode = .scaleAspectFit
            imagemdePerfil.image = pickedImage
        }
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBOutlet weak var CampoNome: UITextField!
    
    
    
    @IBOutlet weak var CampoUniversidade: UITextField!
    
    
    
    @IBOutlet weak var CampoCurso: UITextField!
    
    
    
    @IBOutlet weak var CampoHabilidades: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker.delegate = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func GuardarDadosPerfil(_ sender: Any) {
        usuario.nome = CampoNome.text!
        usuario.universidade = CampoUniversidade.text!
        usuario.curso = CampoCurso.text!
        usuario.habilidades = CampoHabilidades.text!
        usuario.imagemPerfil = ""
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
