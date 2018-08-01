//
//  ViewController.swift
//  align_demo
//
//  Created by Allen Spicer on 8/1/18.
//  Copyright © 2018 surfbreak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var animal = Animal()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGray
        let stackView = UIStackView(frame: view.frame)
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        createLabelWithTextAndAddToStack(stack: stackView, text: animal.type)
        createLabelWithTextAndAddToStack(stack: stackView, text: animal.size)
        createLabelWithTextAndAddToStack(stack: stackView, text: animal.color)
        createLabelWithTextAndAddToStack(stack: stackView, text: animal.sizeType)



        self.view.addSubview(stackView)
    }
    
    func createLabelWithTextAndAddToStack( stack: UIStackView, text : String){
        let label = UILabel()
        label.text = text
        label.textColor = .white
        label.textAlignment = .center
        stack.addArrangedSubview(label)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

