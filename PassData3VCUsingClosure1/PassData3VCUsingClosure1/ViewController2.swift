//
//  ViewController2.swift
//  PassData3VCUsingClosure1
//
//  Created by duycuong on 3/7/19.
//  Copyright © 2019 duycuong. All rights reserved.
//

import UIKit

typealias ClosureUpdateForVC1 = ((_ vc2Data: String) -> Void)


class ViewController2: UIViewController {

    // MARK: - Properties
    @IBOutlet weak var vc2TextField: UITextField!
    
    var closureVC2: ClosureUpdateForVC1?
    var vc2Text: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        vc2TextField.text = vc2Text
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let senderVC2 = segue.destination as? ViewController3 else { return }
        senderVC2.closureVC3 = closureVC2
        closureVC2 = { data in
            senderVC2.vc3DateText = data
        }
        
        closureVC2?(vc2TextField.text!)
    }
    
    // MARK: - Action
    

}
