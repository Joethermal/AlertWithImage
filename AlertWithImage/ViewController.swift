//
//  ViewController.swift
//  AlertWithImage
//
//  Created by Joseph Ward on 16/08/18.
//  Copyright © 2018 Joethermal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func buttonWasClicked(_ sender: Any) {
        let alertController = UIAlertController(title: "How to", message: "1, Enter name and description\n2, Enter Hint and Text\n3, Click Add hint\n4, Repeat adding as many as nessecary\n5, Click Save", preferredStyle: .alert)
        
        let image = UIImage(named: "howtoPDF")
        alertController.addImage(image: image!)
        
        alertController.addAction(UIAlertAction(title: "Close", style: .cancel, handler: nil))
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

