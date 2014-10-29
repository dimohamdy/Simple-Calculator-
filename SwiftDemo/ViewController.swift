//
//  ViewController.swift
//  SwiftDemo
//
//  Created by binaryboy on 10/24/14.
//  Copyright (c) 2014 AhmedHamdy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var txtNumber2: UITextField!
    @IBOutlet var txtNumber1: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    @IBAction func Calc(sender: UIButton) {
      var   num1: Int =    txtNumber2.text.toInt()!
      var  num2: Int =    txtNumber1.text.toInt()!
        var result:Int=0;
        let alert = UIAlertView()
    switch (sender.tag) {
  case 1:
    alert.title = "multiply "
    result=num1*num2;
    break;
    case 2:
        alert.title = "divide"
        result=num1/num2;

        break;
    case 3:
        alert.title = "Add"
        result=num1+num2;

        break;
    case 4:
        alert.title = "subtract"
        result=num1-num2;

        break;
  default:
    break;
}
        alert.message = NSString(format: "The Result is %d", result)
        alert.addButtonWithTitle("Ok")
        alert.show()
    }
}

