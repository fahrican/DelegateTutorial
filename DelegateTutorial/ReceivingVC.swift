//
//  ReceivingVC.swift
//  DelegateTutorial
//
//  Created by fahri on 26.05.18.
//  Copyright © 2018 fahri. All rights reserved.
//

import UIKit

class ReceivingVC: UIViewController, DataSendDelegate {
  
    @IBOutlet weak var receivingOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func userDidSendData(data: String) {
        receivingOutlet.text = data
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "showSendingVC" {
            
            if let sendingVC: SendingVC = segue.destination as! SendingVC {
                sendingVC.delegate = self
            }
        }
    }
}

