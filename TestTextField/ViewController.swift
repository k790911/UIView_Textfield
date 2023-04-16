//
//  ViewController.swift
//  TestTextField
//
//  Created by 김재훈 on 2023/04/12.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var myTextView: MyTextView?
    
    var myText: UITextField = {
        let t = UITextField(frame: CGRect(x: 20, y: 20, width: 50, height: 50))
        t.font = UIFont.boldSystemFont(ofSize: 100)
        return t
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .green
        
        // MARK: MyTextView
        myTextView?.myNum.text = "22"
        myTextView?.backgroundColor = .clear // 가장 아래 뷰
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            self.myTextView?.markOX(Marker.O)
        }
        
    }
    
    
}

