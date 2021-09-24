//
//  ViewController.swift
//  SnapKit_Demo
//
//  Created by 蔡忠翊 on 2021/9/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let childView = UIView()
        childView.backgroundColor = .red
        self.view.addSubview(childView)
        
        let anotherChildView = UIView()
        anotherChildView.backgroundColor = .yellow
        self.view.addSubview(anotherChildView)
        
        /*
        1.size.equalTo
        2.top.equalTo (Likewise, we have bottom.equalTo, left.equalTo and right.equalTo) with the offset.
        3.centerX.equalTo and centerY.equalTo with the offset
         */
        
//        childView.snp.makeConstraints { (make) in
//          make.size.equalTo(CGSize(width: 300, height: 300))
//          make.top.equalTo(self.view.snp.top).offset(100)
//          make.centerX.equalTo(self.view)
//        }
//
//        anotherChildView.snp.makeConstraints { (make) in
//          make.size.equalTo(childView)
//          make.top.equalTo(childView.snp.bottom).offset(50)
//          make.centerX.equalTo(self.view)
//        }
        
        
        
        

        childView.snp.makeConstraints { (make) in
//            make.top.bottom.left.right.equalTo(self.view)
//            make.edges.equalTo(self.view)
            make.edges.equalTo(self.view).inset(UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20))
        }
    }


}

