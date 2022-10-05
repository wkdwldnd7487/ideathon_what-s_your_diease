//
//  Survey_Q4.swift
//  ideathon
//
//  Created by 장지웅 on 2022/10/01.
//

import Foundation
import UIKit

class Survey_Q4: UIViewController {
    @IBOutlet weak var btn_Yes_toggle: UIButton!
    @IBOutlet weak var btn_No_toggle: UIButton!
    var check_Pain_Sight : Int = 0
    @IBOutlet weak var lbl_Q4: UILabel!
    var checking_diease : Int = 0
    var check_button_clicked : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btn_Yes_toggle.isHidden = true
        btn_No_toggle.isHidden = true
        
        
    }
    
    @IBAction func btn_Yes(_ sender: UIButton) {
        
            check_button_clicked = 1
            checking_diease = checking_diease + 1
            btn_No_toggle.isHidden = true
            btn_Yes_toggle.isHidden = false
            
    }
    
    @IBAction func btn_No(_ sender: UIButton) {
            check_button_clicked = 1
            btn_Yes_toggle.isHidden = true
            btn_No_toggle.isHidden = false
            
    }
    
    @IBAction func btn_Next(_ sender: UIButton) {
        
        if(check_button_clicked != 0){
            guard let Survey_Result = self.storyboard?.instantiateViewController(withIdentifier: "Survey_Result") as? Survey_Result else { return }
            // 화면 전환 애니메이션 설정
            Survey_Result.modalTransitionStyle = .coverVertical
            // 전환된 화면이 보여지는 방법 설정 (fullScreen)
            Survey_Result.modalPresentationStyle = .fullScreen
            Survey_Result.checking_diease = checking_diease
            Survey_Result.check_Pain_Sight = check_Pain_Sight
            self.present(Survey_Result, animated: true, completion: nil)
           
        }
        else{
            let sheet = UIAlertController(title: "경고", message: "선택해주세요", preferredStyle: .alert)
            sheet.addAction(UIAlertAction(title: "닫기", style: .destructive, handler: { _ in print("닫기") }))
            present(sheet, animated:true)
        }
        
    }
    
}
