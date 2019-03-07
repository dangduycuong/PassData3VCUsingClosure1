//
//  ViewController.swift
//  PassData3VCUsingClosure1
//
//  Created by duycuong on 3/7/19.
//  Copyright © 2019 duycuong. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {

    // MARK: - Properties
    @IBOutlet weak var vc1Textfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let senderVC1 = segue.destination as? ViewController2 else { return }
        
        senderVC1.vc2Text = vc1Textfield.text
        senderVC1.closureVC2 = { data in
            self.vc1Textfield.text = data
        }
    }


}

