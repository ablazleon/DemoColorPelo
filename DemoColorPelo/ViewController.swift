//
//  ViewController.swift
//  DemoColorPelo
//
//  Created by Adrian on 16/10/2018.
//  Copyright © 2018 Adrian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tioSegmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Quiero pasar la inforamcion del segemented control a la otra.
    // Sender is what you clicked
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Si el segue es el que quiero
        if segue.identifier == "Show Result"{
            
            // Puede que me haya equivocado al programar
            if let rvc = segue.destination as? ResultadosViewController{
                
                let index = tioSegmentedControl.selectedSegmentIndex
                
                if index == -1 {return }
                
                let t = tioSegmentedControl.titleForSegment(at: index)
                rvc.tipoDeTio  = t
            }
    }

}

}
