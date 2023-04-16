//
//  MyTextView.swift
//  TestTextField
//
//  Created by 김재훈 on 2023/04/12.
//

import UIKit

enum Marker {
    case O
    case X
}

class MyTextView: UITextField {
    
    @IBOutlet var myOXimage: UIImageView!
    @IBOutlet var myNum: UITextField!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        //fatalError("init(coder:) has not been implemented")
        
        commonInit()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    private func commonInit() {
        /*
        let bundle = Bundle.init(for: MyTextView.self)
        */
        let myNib = Bundle.main.loadNibNamed("MyTextView", owner: self, options: nil)
        if let myView = myNib?.first as? UIView {
            addSubview(myView)
            myView.frame = self.bounds
            myView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            
            myView.backgroundColor = .clear // 가장 아래 뷰 바로 위 뷰
        }
    }
    
    func markOX(_ num: Marker) {
        if num == Marker.O {
            myOXimage.image = UIImage(named: "ox_o")
        } else if num == Marker.X {
            myOXimage.image = UIImage(named: "ox_x")
        }
    }
}
