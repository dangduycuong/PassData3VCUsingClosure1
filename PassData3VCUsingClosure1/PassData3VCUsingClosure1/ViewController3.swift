//
//  ViewController3.swift
//  PassData3VCUsingClosure1
//
//  Created by duycuong on 3/7/19.
//  Copyright © 2019 duycuong. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var vc3TextField: UITextField!
    var vc3DateText: String?
    
    var closureVC3: ClosureUpdateForVC1?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        vc3TextField.text = vc3DateText
        // Do any additional setup after loading the view.
    }
    

    @IBAction func backRootViewBtn(_ sender: UIButton) {
        closureVC3?(vc3TextField.text!)
        navigationController?.popToRootViewController(animated: true)
    }

}
