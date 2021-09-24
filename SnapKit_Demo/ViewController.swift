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
            make.edges.equalToSuperview()
        }
        
        view.addSubview(view2)
        view2.snp.makeConstraints { make in
            
            make.height.equalTo(40)
            make.centerY.equalToSuperview()
            make.leading.trailing.equalToSuperview()
        }
        
        view.addSubview(view3)
        view3.snp.makeConstraints { make in
            
            make.width.equalTo(40)
            make.centerX.equalToSuperview()
            make.top.bottom.equalToSuperview()
        }
        
    }
    
    
}

