//
//  SecondViewController.swift
//  multipleViews
//
//  Created by Xt on 12/3/18.
//  Copyright © 2018 Andrew Inc. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var userName = "Andrew"
    
    @IBAction func logOutButtonPressed(_ sender: Any) {
        //navigationController?.popViewController(animated: true)
        
        
        self.dismiss(animated: true
            , completion: nil)
        print("I was pressed")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print ("Second contoller loaded \(userName)")
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print ("Second contoller appeared \(userName)")
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }

}
