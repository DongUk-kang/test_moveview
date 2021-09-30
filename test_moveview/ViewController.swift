//
//  ViewController.swift
//  test_moveview
//
//  Created by 강동욱 on 2021/09/30.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func movebtn(_ sender: Any) {
        // alert 생성 (alert은 화면 중앙, actonSheet는 하단)
        let alertVC = UIAlertController(title: "메세지", message: "내용", preferredStyle: .actionSheet)
        
    
        //ui alert 버튼생성, style에서 cancel은 하나만
        let cancelBtn = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        let confirmBtn = UIAlertAction(title: "확인", style: .default, handler: nil)
        let addBtn = UIAlertAction(title: "추가", style: .default, handler: nil)
        let addedBtn = UIAlertAction(title: "추가2", style: .destructive, handler: nil)
        let plusBtn = UIAlertAction(title: "세번째", style: .destructive, handler: nil)
        
        alertVC.addAction(cancelBtn)
        alertVC.addAction(confirmBtn)
        alertVC.addAction(addBtn)
        alertVC.addAction(addedBtn)
        alertVC.addAction(plusBtn)
    
        // alert 띄우는 코드
        present(alertVC, animated: true, completion: nil)
    }
    
    
    
    
    @IBAction func movieScreen1(_ sender: Any) {
        let MainSB = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = MainSB.instantiateViewController(withIdentifier: "SecondVC")
        
        secondVC.modalPresentationStyle = .fullScreen
        
        // 화면 이동 코드
        present(secondVC, animated: true, completion: nil)
        
    }
    
    @IBAction func moveScreen2(_ sender: Any) {
        let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC")
        navigationController?.pushViewController(secondVC!, animated: true)
    }
    
    
    
    
}



