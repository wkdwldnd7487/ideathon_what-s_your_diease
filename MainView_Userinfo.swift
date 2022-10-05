//
//  MainView_Userinfo.swift
//  ideathon
//
//  Created by 장지웅 on 2022/10/03.
//

import Foundation
import UIKit

class MainView_Userinfo: UIViewController {
    
    @IBOutlet weak var btn_Next: UIButton!
    @IBOutlet weak var imageview_leaf: UIImageView!
    @IBOutlet weak var imageview_Background: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btn_Next.isHidden = true
        
        imageview_Background.image = UIImage(named: "delay_Image.jpeg")
        
        let seconds = 2.0
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            self.btn_Next.isHidden = false
            self.imageview_Background.image = UIImage(named: "mainview_firstpage.jpeg")
            self.imageview_leaf.image = UIImage(named: "leaf.jpeg")
        }
        
        
        
        
    }
    
    @IBAction func btn_toMain(_ sender: UIButton) {
    
        guard let MainView = self.storyboard?.instantiateViewController(withIdentifier: "MainView") as? MainView else { return }
                // 화면 전환 애니메이션 설정
        MainView.modalTransitionStyle = .coverVertical
                // 전환된 화면이 보여지는 방법 설정 (fullScreen)
        MainView.modalPresentationStyle = .fullScreen
                self.present(MainView, animated: true, completion: nil)
        
    }
        
    
    
}
