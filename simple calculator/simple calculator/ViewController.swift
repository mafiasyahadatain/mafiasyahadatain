//
//  ViewController.swift
//  simple calculator
//
//  Created by ***The Lost Boy # on 7/18/20.
//  Copyright © 2020 ***The Lost Boy #. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Height: UITextField!
    @IBOutlet weak var Width: UITextField!
    @IBOutlet weak var Result: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculateArea(sender: AnyObject) {
        if let h = Double(Height.text ?? "0"), w = Double(Width.text ?? "0") {
            Result.text = String(h * w)
        }else{
            Result.text = "INPUT TIDAK VALID"
        }
    }
    @IBAction func resetView(sender: AnyObject) {
        Result.text = ""
        Height.text = ""
        Width.text = ""
    }

}

