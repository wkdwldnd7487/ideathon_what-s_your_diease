//
//  Survey_Result.swift
//  ideathon
//
//  Created by 장지웅 on 2022/10/01.
//

import Foundation
import UIKit

class Survey_Result: UIViewController {
    
    @IBOutlet weak var btn_Backword: UIButton!
    @IBOutlet weak var lbl_Result: UIButton!
    @IBOutlet weak var imageVIew_Result: UIImageView!
    var checking_diease : Int = 0
    var check_Pain_Sight : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if(checking_diease >= 3){
            if(check_Pain_Sight == 1){
                imageVIew_Result.image = UIImage(named: "Dry_eye.jpeg")
                lbl_Result.setTitle( "안구건조증", for : .normal)
            }
            else{
                imageVIew_Result.image = UIImage(named: "백내장_test.jpeg")
                lbl_Result.setTitle( "백내장", for : .normal)
                
                
            }
        }
        else{
            imageVIew_Result.image = UIImage(named: "erorr.png")
            lbl_Result.setTitle( "데이터 부족", for : .normal)
            btn_Backword.setTitle("처음으로", for: .normal)
            
        }
        
        
        
    }
    
    @IBAction func btn_Backword(_ sender: UIButton) {
        
        if(checking_diease < 3){
            self.view.window!.rootViewController?.dismiss(animated: true, completion: nil)
        }
        else{
            self.dismiss(animated: true)
        }
        
    }
    @IBAction func tapGesture_ImageTouched(_ sender: Any) {
        
        guard let Survey_Result_Prevent = self.storyboard?.instantiateViewController(withIdentifier: "Survey_Result_Prevent") as? Survey_Result_Prevent else { return }
                // 화면 전환 애니메이션 설정
        Survey_Result_Prevent.modalTransitionStyle = .coverVertical
                // 전환된 화면이 보여지는 방법 설정 (fullScreen)
        Survey_Result_Prevent.modalPresentationStyle = .fullScreen
               
        Survey_Result_Prevent.check_Pain_Sight = check_Pain_Sight
        
        self.present(Survey_Result_Prevent, animated: true, completion: nil)
        
        
        
    }
    @IBAction func btn_ToPrevent(_ sender: UIButton) {
        
        guard let Survey_Result_Prevent = self.storyboard?.instantiateViewController(withIdentifier: "survey_Result_Prevent") as? Survey_Result_Prevent else { return }
                // 화면 전환 애니메이션 설정
        Survey_Result_Prevent.modalTransitionStyle = .coverVertical
                // 전환된 화면이 보여지는 방법 설정 (fullScreen)
        Survey_Result_Prevent.modalPresentationStyle = .fullScreen
              
        Survey_Result_Prevent.check_Pain_Sight = check_Pain_Sight
        
        self.present(Survey_Result_Prevent, animated: true, completion: nil)
        
    }
}
