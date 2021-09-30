//
//  SecondViewController.swift
//  test_moveview
//
//  Created by 강동욱 on 2021/09/30.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    // prensent == dismiss
    @IBAction func backBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
     
    // push == pop
     @IBAction func backBtn2(_ sender: Any) {
         navigationController?.popViewController(animated: true)
     }
     
     // segue 방식 present - dismiss - modaltiy // push - pop - show

    

}
