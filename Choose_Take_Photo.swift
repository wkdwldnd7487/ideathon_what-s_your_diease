//
//  Choose_Take_Photo.swift
//  ideathon
//
//  Created by 장지웅 on 2022/10/04.
//

import Foundation
import UIKit

class Choose_Take_Photo: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       
    }
    
    @IBAction func btn_Backword(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    @IBAction func btn_GoHospital(_ sender: UIButton) {
        
        guard let Search_Hospital = self.storyboard?.instantiateViewController(withIdentifier: "Search_Hospital") as? Search_Hospital else { return }
                // 화면 전환 애니메이션 설정
        Search_Hospital.modalTransitionStyle = .coverVertical
                // 전환된 화면이 보여지는 방법 설정 (fullScreen)
        Search_Hospital.modalPresentationStyle = .fullScreen
        self.present(Search_Hospital, animated: true, completion: nil)
        }
    
    
    
}
