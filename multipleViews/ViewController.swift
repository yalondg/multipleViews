//
//  ViewController.swift
//  multipleViews
//
//  Created by Xt on 12/3/18.
//  Copyright © 2018 Andrew Inc. All rights reserved.
//


// Read from input box
    //Check if logged in already

// Compare to a String
    // Compare to an array of Strings

// Load second view Controller

//create user defaults

// Load table with username

// Log Out button





import UIKit

class ViewController: UIViewController {

    var myString = "default"
    
    //the defaultvalues to store user data
    let defaults = UserDefaults.standard
    
    @IBOutlet weak var pswdField: UITextField!
    @IBOutlet weak var loginField: UITextField!
    
    var secondVC:SecondViewController? = nil
    
    @IBAction func buttonPressed(_ sender: Any) {
        let loginInput: String = loginField.text ?? ""
        let pswdInput: String = pswdField.text ?? ""
        print(loginInput + pswdInput)
        
        let pswdi = "test"
        let logini = "test"
        
        self.defaults.set(pswdi, forKey: "pswd")
        self.defaults.set(logini, forKey: "id")
        print(self.defaults.string(forKey: "id") ?? "mistake")
        
        if (logini == loginInput && pswdi == pswdInput){
            print("login")
            let secondVC:SecondViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController //goes to second story board when "Programatic" is clicked
            
            self.present(secondVC, animated: true, completion: nil)
        }
        
       
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print ("First contoller loaded")
        myString = "I am modified"
        
       
        //secondVC?.userName = "Marie"
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

