//
//  ViewController.swift
//  multipleViews
//
//  Created by Xt on 12/3/18.
//  Copyright © 2018 Andrew Inc. All rights reserved.
//


// Sliding window --

//Infinite scrolling TableView displaying Fibonacci sequence

// Read from input box
    //Check if logged in already

// Compare to a String
    // Compare to an array of Strings

// Load second view Controller

// Load table with username

// Log Out button



import UIKit

class ViewController: UIViewController {

    var myString = "default"
    
    @IBOutlet weak var loginField: UITextField!
    var secondVC:SecondViewController? = nil
    
    @IBAction func buttonPressed(_ sender: Any) {
        let text: String = loginField.text ?? ""
        print(text)
        
        let secondVC:SecondViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController //goes to second story board when "Programatic" is clicked
        
        self.present(secondVC, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print ("First contoller loaded")
        myString = "I am modified"
        
        secondVC = (UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController)
        secondVC?.userName = "Marie"
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        print("First controller appeared")
        
        //self.present(secondVC!, animated: true, completion: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("I should prep the second view controller")
        
        //segue.destination
    }

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        print("shouldPerformSegue")
        
//        if(you paid me){
//            return true
//        }else{
//            display pay me view controller
//        }
        
        return true;
    }
    
}

