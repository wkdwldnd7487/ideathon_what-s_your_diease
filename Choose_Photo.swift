//
//  Choose_Photo.swift
//  ideathon
//
//  Created by 장지웅 on 2022/10/04.
//

import Foundation
import UIKit

class Choose_Photo: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func btn_Choose_Take_Photo(_ sender: UIButton) {
        
        guard let Choose_Take_Photo = self.storyboard?.instantiateViewController(withIdentifier: "Choose_Take_Photo") as? Choose_Take_Photo else { return }
                // 화면 전환 애니메이션 설정
        Choose_Take_Photo.modalTransitionStyle = .coverVertical
                // 전환된 화면이 보여지는 방법 설정 (fullScreen)
        Choose_Take_Photo.modalPresentationStyle = .fullScreen
        
                self.present(Choose_Take_Photo, animated: true, completion: nil)
        
    }
    @IBAction func btn_Backword(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
