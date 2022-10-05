//
//  ViewController.swift
//  ideathon
//
//  Created by 장지웅 on 2022/10/01.
//

import UIKit

class MainView : UIViewController {

    @IBOutlet weak var imageView_Main: UIImageView!
    
    @IBOutlet weak var imageView_TakePhoto: UIImageView!
    @IBOutlet weak var btn_toSurvey: UIButton!
    
    @IBOutlet weak var imageView_Background: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView_Background.image = UIImage(named: "background_image.jpg")
        imageView_TakePhoto.image = UIImage(named: "btn_take_Photo.png")
        imageView_Main.image = UIImage(named:"btn_Click.png")
        
        // Do any additional setup after loading the view.
    }

    @IBAction func btn_Click(_ sender: Any) {
        
        guard let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SurveyView_List") as? SurveyView_List else { return }
                // 화면 전환 애니메이션 설정
                secondViewController.modalTransitionStyle = .coverVertical
                // 전환된 화면이 보여지는 방법 설정 (fullScreen)
                secondViewController.modalPresentationStyle = .fullScreen
                self.present(secondViewController, animated: true, completion: nil)
        
       // self.dismiss(animated: true)
        
    }
    
    @IBAction func btn_takePhoto(_ sender: Any) {
        
        guard let Choose_Photo = self.storyboard?.instantiateViewController(withIdentifier: "Choose_Photo") as? Choose_Photo else { return }
                // 화면 전환 애니메이션 설정
        Choose_Photo.modalTransitionStyle = .coverVertical
                // 전환된 화면이 보여지는 방법 설정 (fullScreen)
        Choose_Photo.modalPresentationStyle = .fullScreen
                self.present(Choose_Photo, animated: true, completion: nil)
        
    }
    
    @IBAction func btn_toImage(_ sender: UIButton) {
        
        guard let Choose_Photo = self.storyboard?.instantiateViewController(withIdentifier: "Choose_Photo") as? Choose_Photo else { return }
                // 화면 전환 애니메이션 설정
        Choose_Photo.modalTransitionStyle = .coverVertical
                // 전환된 화면이 보여지는 방법 설정 (fullScreen)
        Choose_Photo.modalPresentationStyle = .fullScreen
                self.present(Choose_Photo, animated: true, completion: nil)
        
    }
    
    @IBAction func btn_toSurvey(_ sender: UIButton) {
        
        guard let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SurveyView_List") as? SurveyView_List else { return }
                // 화면 전환 애니메이션 설정
                secondViewController.modalTransitionStyle = .coverVertical
                // 전환된 화면이 보여지는 방법 설정 (fullScreen)
                secondViewController.modalPresentationStyle = .fullScreen
                self.present(secondViewController, animated: true, completion: nil)
        
    }
}

