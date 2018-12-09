//
//  ViewController.swift
//  multipleViews
//
//  Created by Xt on 12/3/18.
//  Copyright © 2018 Andrew Inc. All rights reserved.
//


// Sliding window --

//Infinite scrolling TableView displaying Fibonacci sequence

// 1. Generate fibonacci numbers, recursive
//// fibonacci algoirthim
//---- easy


// 2. Method to store some amount of numbers for the tableview to display

// 3. Mechanism to add addtional fibonacci numbers (infinte)


// 4. Create the tableview and add text to table view cell
//-- easy storyboard -- we did this in class


import UIKit

class ViewController: UIViewController {

    var myString = "default"
    
    var secondVC:SecondViewController? = nil
    
    @IBAction func buttonPressed(_ sender: Any) {
        let secondVC:SecondViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
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

