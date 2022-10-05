//
//  SurveyView_1.swift
//  ideathon
//
//  Created by 장지웅 on 2022/10/01.
//

import Foundation
import UIKit

class SurveyView_List: UIViewController {
    
    @IBOutlet weak var imageView_backGround: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView_backGround.image = UIImage(named: "background_image.jpg")
    
       
    }

    @IBAction func btn_Backword(_ sender: UIButton) {
        
        self.dismiss(animated: true)
        
    }
    
    @IBAction func btn_surveyEyes(_ sender: UIButton) {
        
        guard let Choose_part = self.storyboard?.instantiateViewController(withIdentifier: "Choose_part") as? Choose_part else { return }
                // 화면 전환 애니메이션 설정
        Choose_part.modalTransitionStyle = .coverVertical
                // 전환된 화면이 보여지는 방법 설정 (fullScreen)
        Choose_part.modalPresentationStyle = .fullScreen
        
                self.present(Choose_part, animated: true, completion: nil)
        
    }
    
    @IBAction func btn_surveyHead(_ sender: UIButton) {
        
    }
    
    @IBAction func btn_surveyFace(_ sender: UIButton) {
    }
    
    @IBAction func btn_surveyMental(_ sender: UIButton) {
    }
    
    @IBAction func btn_surveyChest(_ sender: UIButton) {
    }
    
    @IBAction func btn_surveyBack(_ sender: UIButton) {
 }
    
    @IBAction func btn_surveyStomach(_ sender: UIButton) {
    }
    
    @IBAction func btn_surveyUrinary(_ sender: UIButton) {
   }
    
    @IBAction func btn_surveyArmandLeg(_ sender: UIButton) {
 }
    
    
    
    
    @IBAction func btn_surveyBone(_ sender: UIButton) {
  }
    
    @IBAction func btn_surveyMuscle(_ sender: UIButton) {
  }
        
}

