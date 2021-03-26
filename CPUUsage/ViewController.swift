//
//  ViewController.swift
//  CPUUsage
//
//  Created by Datamatics on 25/03/21.
//  Copyright © 2021 Datamatics. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var statusLabel: UILabel!
    var student : Student?
    var laptop : Laptop?
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func checkStatus(_ sender: UIButton) {
        student = Student(name: "Gopal", laptop: nil)
        laptop = Laptop(name: "HP", belongsTo: nil)
        assignProperty()
        //        student = nil
        //        laptop = nil
        
    }
    func assignProperty(){
        student?.laptop = laptop
        laptop?.belongsTo = student
        student = nil
        laptop = nil
    }
}

class Student{
    let name : String
    // Making weak property
    weak var laptop : Laptop?
    //    let laptop : Laptop?
    init(name: String, laptop : Laptop?) {
        self.name = name
        self.laptop = laptop
    }
    deinit {
        print("\(name) is deinitilized")
    }
}
class Laptop{
    let name : String
    var belongsTo : Student?
    //    let belongsTo : Student?
    init(name: String, belongsTo : Student?) {
        self.name = name
        self.belongsTo = belongsTo
    }
    deinit {
        print("\(name) is deinitilized")
    }
}
