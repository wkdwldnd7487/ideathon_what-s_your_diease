//
//  Survey_Q2.swift
//  ideathon
//
//  Created by 장지웅 on 2022/10/01.
//

import Foundation
import UIKit

class Survey_Q2: UIViewController {
    
    @IBOutlet weak var btn_Yes_toggle: UIButton!
    @IBOutlet weak var btn_No_toggle: UIButton!
    
    @IBOutlet weak var lbl_Q2: UILabel!
    
    var check_Pain_Sight : Int = 0
    var checking_diease : Int = 0
    var check_button_clicked : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        btn_Yes_toggle.isHidden = true
        btn_No_toggle.isHidden = true
        
       
        
    }
    @IBAction func btn_Backword(_ sender: Any) {
        self.dismiss(animated: true)
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
            guard let Survey_Q3 = self.storyboard?.instantiateViewController(withIdentifier: "Survey_Q3") as? Survey_Q3 else { return }
            // 화면 전환 애니메이션 설정
            Survey_Q3.modalTransitionStyle = .coverVertical
            // 전환된 화면이 보여지는 방법 설정 (fullScreen)
            Survey_Q3.modalPresentationStyle = .fullScreen
            Survey_Q3.checking_diease = checking_diease
            self.present(Survey_Q3, animated: true, completion: nil)
            if(check_Pain_Sight == 1){
                Survey_Q3.lbl_Q3.text = "찬바람이 불거나 냉/난방기를 사용할 때 눈물이 많이 나오나요?"
                Survey_Q3.check_Pain_Sight = 1
            }
            else{
                Survey_Q3.lbl_Q3.text = "한쪽 눈을 감고 질문을 읽어보세요, 글씨가 겹쳐 보이나요?"
                Survey_Q3.check_Pain_Sight = 0
            }
        }
        else{
            let sheet = UIAlertController(title: "경고", message: "선택해주세요", preferredStyle: .alert)
            sheet.addAction(UIAlertAction(title: "닫기", style: .destructive, handler: { _ in print("닫기") }))
                    
            present(sheet, animated:true)
            
        }
    }
    
}
