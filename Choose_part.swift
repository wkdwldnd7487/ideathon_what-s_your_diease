//
//  Choose_part.swift
//  ideathon
//
//  Created by 장지웅 on 2022/10/04.
//

import Foundation
import UIKit

class Choose_part: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
    }
    
    @IBAction func tapGes_Pain(_ sender: Any) {
        
        guard let Survey_Q1 = self.storyboard?.instantiateViewController(withIdentifier: "Survey_Q1") as? Survey_Q1 else { return }
                // 화면 전환 애니메이션 설정
        Survey_Q1.modalTransitionStyle = .coverVertical
                // 전환된 화면이 보여지는 방법 설정 (fullScreen)
        Survey_Q1.modalPresentationStyle = .fullScreen
        
        Survey_Q1.check_Pain_Sight = 1
        
                self.present(Survey_Q1, animated: true, completion: nil)
        
        Survey_Q1.lbl_Q1.text = "모래가 들어간 듯한 이물감이 있나요?"
        
        
        
        
    }
    
    @IBAction func tapGes_Sight(_ sender: Any) {
        
        guard let Survey_Q1 = self.storyboard?.instantiateViewController(withIdentifier: "Survey_Q1") as? Survey_Q1 else { return }
                // 화면 전환 애니메이션 설정
        Survey_Q1.modalTransitionStyle = .coverVertical
                // 전환된 화면이 보여지는 방법 설정 (fullScreen)
        Survey_Q1.modalPresentationStyle = .fullScreen
        Survey_Q1.check_Pain_Sight = 0
                self.present(Survey_Q1, animated: true, completion: nil)
        
        Survey_Q1.lbl_Q1.text = "안개가 낀 것처럼 뿌옇게 보이나요?"
        
    }
    
    
    @IBAction func btn_Pain(_ sender: UIButton) {
        
        guard let Survey_Q1 = self.storyboard?.instantiateViewController(withIdentifier: "Survey_Q1") as? Survey_Q1 else { return }
                // 화면 전환 애니메이션 설정
        Survey_Q1.modalTransitionStyle = .coverVertical
                // 전환된 화면이 보여지는 방법 설정 (fullScreen)
        Survey_Q1.modalPresentationStyle = .fullScreen
        Survey_Q1.check_Pain_Sight = 1
                self.present(Survey_Q1, animated: true, completion: nil)
        
        Survey_Q1.lbl_Q1.text = "모래가 들어간 듯한 이물감이 있나요?"
        
    }
    
    
    @IBAction func btn_Sight(_ sender: UIButton) {
        
        guard let Survey_Q1 = self.storyboard?.instantiateViewController(withIdentifier: "Survey_Q1") as? Survey_Q1 else { return }
                // 화면 전환 애니메이션 설정
        Survey_Q1.modalTransitionStyle = .coverVertical
                // 전환된 화면이 보여지는 방법 설정 (fullScreen)
        Survey_Q1.modalPresentationStyle = .fullScreen
        Survey_Q1.check_Pain_Sight = 0
                self.present(Survey_Q1, animated: true, completion: nil)
        
        Survey_Q1.lbl_Q1.text = "안개가 낀 것처럼 뿌옇게 보이나요?"
        
    }
    
    @IBAction func btn_Backword(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
}
