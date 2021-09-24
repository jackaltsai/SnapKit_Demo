//
//  ViewController.swift
//  SnapKit_Demo
//
//  Created by 蔡忠翊 on 2021/9/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private lazy var view1: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.blue
        return view
    }()
    
    private lazy var view2: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.purple
        return view
    }()
    
    private lazy var view3: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.green
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        layout()
        
        
    }


    private func layout() {
        view.addSubview(view1)
        view1.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.height.equalTo(view1.snp.width)
            make.centerY.equalToSuperview()
        }
        
        view.addSubview(view2)
        view2.snp.makeConstraints { make in
            
            make.left.equalTo(view1.snp.right)
            make.height.equalTo(view2.snp.width)
            make.width.equalTo(view1)
            make.centerY.equalToSuperview()
        }
        
        view.addSubview(view3)
        view3.snp.makeConstraints { make in
            
            make.left.equalTo(view2.snp.right)
            make.height.equalTo(view3.snp.width)
            make.right.equalToSuperview()
            make.width.equalTo(view2)
            make.centerY.equalToSuperview()
        }
        
    }
    
    
}

