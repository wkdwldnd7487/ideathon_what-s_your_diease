//
//  Survey_Q1.swift
//  ideathon
//
//  Created by 장지웅 on 2022/10/01.
//

import Foundation
import UIKit


class Survey_Q1: UIViewController {
    
    @IBOutlet weak var btn_Yes_toggle: UIButton!
    @IBOutlet weak var btn_No_toggle: UIButton!
    @IBOutlet weak var lbl_Q1: UILabel!
    
    var check_Pain_Sight : Int = 0
    var check_diease : Int = 0
    var check_button_clicked : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        
        btn_Yes_toggle.isHidden = true
        btn_No_toggle.isHidden = true
        
    }
    
    @IBAction func btn_Backword(_ sender: UIButton) {
        
        self.dismiss(animated: true)
        
    }
    
    
    @IBAction func btn_Next(_ sender: UIButton) {
        
        if(check_button_clicked != 0){
            guard let Survey_Q2 = self.storyboard?.instantiateViewController(withIdentifier: "Survey_Q2") as? Survey_Q2 else { return }
            // 화면 전환 애니메이션 설정
            Survey_Q2.modalTransitionStyle = .coverVertical
            // 전환된 화면이 보여지는 방법 설정 (fullScreen)
            Survey_Q2.modalPresentationStyle = .fullScreen
            Survey_Q2.checking_diease = check_diease
            self.present(Survey_Q2, animated: true, completion: nil)
            if(check_Pain_Sight == 1){
                Survey_Q2.lbl_Q2.text = "쑤시는 듯한 통증이 있나요?"
                Survey_Q2.check_Pain_Sight = 1
            }
            else{
                Survey_Q2.lbl_Q2.text = "색 구별이 잘 안되고 색이 전체적으로 노르스름하게 보이나요?"
                Survey_Q2.check_Pain_Sight = 0
            }
        }
        else{
            let sheet = UIAlertController(title: "경고", message: "선택해주세요", preferredStyle: .alert)
            sheet.addAction(UIAlertAction(title: "닫기", style: .destructive, handler: { _ in print("닫기") }))
                    
            present(sheet, animated:true)
            
        }
        
    }

    
    
    @IBAction func btn_Yes(_ sender: UIButton) {
        
            check_button_clicked = 1
            check_diease = check_diease + 1
            btn_No_toggle.isHidden = true
            btn_Yes_toggle.isHidden = false
            
    }
    
    @IBAction func btn_No(_ sender: UIButton) {
        
            check_button_clicked = 1
            check_diease = 0
            btn_Yes_toggle.isHidden = true
            btn_No_toggle.isHidden = false
            
    }
    
}
