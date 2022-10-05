//
//  Survey_Result_Prevent.swift
//  ideathon
//
//  Created by 장지웅 on 2022/10/02.
//

import Foundation
import UIKit
import WebKit

class Survey_Result_Prevent: UIViewController {
    
    @IBOutlet weak var lbl_Prevent5: UILabel!
    @IBOutlet weak var lbl_Prevent4: UILabel!
    @IBOutlet weak var lbl_Prevent3: UILabel!
    @IBOutlet weak var lbl_Prevent2: UILabel!
    @IBOutlet weak var lbl_Prevent1: UILabel!
    @IBOutlet weak var imageView_leaf1: UIImageView!
    @IBOutlet weak var imageView_leaf2: UIImageView!
    @IBOutlet weak var webView: WKWebView!
    var keyofVideo : String = ""
    var check_Pain_Sight : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if(check_Pain_Sight == 0){
            
            
            imageView_leaf1.isHidden = true
            imageView_leaf2.isHidden = true
            
            lbl_Prevent1.text = "야외에서 선글라스 착용"
            lbl_Prevent2.text = "눈에 외상을 입지 않도록 주의"
            lbl_Prevent3.text = " 스테로이드 등 백내장을 유발 할 수 있는 약을 점안하거나 복용할 경우 정기적인 안과 검진을 통해 정기검진을 받기"
            lbl_Prevent4.isHidden = true
            lbl_Prevent5.isHidden = true
            
            loadVideo(videoKey: "https://www.youtube.com/embed/jVu90EInLic")
        }
        else{
            loadVideo(videoKey: "https://www.youtube.com/embed/NWi9H8tYmIE")
            
            lbl_Prevent1.text = "장기간의 컴퓨터 작업이나 게임기 사용, 독서 등을 피하고 적절한 휴식"
            lbl_Prevent2.text = "인공눈물 사용"
            lbl_Prevent3.text = "환경을 건조하지 않게 유지"
            lbl_Prevent4.text = "충분한 수면"
            lbl_Prevent5.text = "비타민 C 및 항산화 식품 섭취"
        }
    }
    
    func loadVideo(videoKey : String){
        
        let url = URL(string: videoKey)
        let webConfiguration = WKWebViewConfiguration()

            let request = URLRequest(url: url!)
        webConfiguration.allowsInlineMediaPlayback = false
            self.webView.load(request)
        
    }
    
    @IBAction func btn_GoHospital(_ sender: UIButton) {
        
        guard let Search_Hospital = self.storyboard?.instantiateViewController(withIdentifier: "Search_Hospital") as? Search_Hospital else { return }
                // 화면 전환 애니메이션 설정
        Search_Hospital.modalTransitionStyle = .coverVertical
                // 전환된 화면이 보여지는 방법 설정 (fullScreen)
        Search_Hospital.modalPresentationStyle = .fullScreen
        self.present(Search_Hospital, animated: true, completion: nil)
        
    }
    
    @IBAction func btn_DismissAll(_ sender: UIButton) {
        
        self.view.window!.rootViewController?.dismiss(animated: true, completion: nil)
    }
}
