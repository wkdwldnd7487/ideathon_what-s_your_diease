//
//  Search_Hospital.swift
//  ideathon
//
//  Created by 장지웅 on 2022/10/04.
//

import Foundation
import UIKit

class Search_Hospital: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
           
    }
    
    @IBAction func btn_Backword(_ sender: UIButton) {
        self.view.window!.rootViewController?.dismiss(animated: true, completion: nil)
    }
}
