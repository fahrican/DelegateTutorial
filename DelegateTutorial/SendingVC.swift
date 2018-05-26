//
//  SendingVC.swift
//  DelegateTutorial
//
//  Created by fahri on 26.05.18.
//  Copyright © 2018 fahri. All rights reserved.
//

import UIKit

protocol DataSendDelegate {
    func userDidSendData(data: String)
}

class SendingVC: UIViewController {
    
    var delegate: DataSendDelegate? = nil

    @IBOutlet weak var userInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func userPressedSendButton(_ sender: UIButton) {
        
        if delegate != nil {
            
            if let data = userInput.text {
                delegate?.userDidSendData(data: data)
                dismiss(animated: true, completion: nil)
            }
        }
    }
    

}
