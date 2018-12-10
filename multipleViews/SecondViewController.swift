//
//  SecondViewController.swift
//  multipleViews
//
//  Created by Xt on 12/3/18.
//  Copyright © 2018 Andrew Inc. All rights reserved.
//

// Load table with username

// Log Out button

import UIKit

class SecondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let defaults = UserDefaults.standard
    
    
    
    @IBOutlet weak var table: UITableView!
    
    @IBAction func logOutButtonPressed(_ sender: Any) {
        //navigationController?.popViewController(animated: true)
        
        
        self.dismiss(animated: true
            , completion: nil)
        print("I was pressed")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let userName = self.defaults.string(forKey: "id") ?? "mistakeID"
        
        table.delegate = self
        table.dataSource = self
     
       
        print ("Second contoller loaded \(userName)")
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        var userName = self.defaults.string(forKey: "id") ?? "mistakeID"
      
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = self.defaults.string(forKey: "id") ?? "mistakeID"
        
        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }

}
